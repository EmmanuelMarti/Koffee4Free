<?php

/**
 * File Race.php
 *
 * PHP version 5
 *
 * @category Server\App
 * @package K2S
 * @license http://opensource.org/licenses/MIT
 * @link /
 * @since Version 0.0.1
 * @version 0.0.1
 */
namespace Server\App;

use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;

/**
 * This class manages the Race listener server
 *
 * @category Server\App
 * @package K2S
 * @since Version 0.0.1
 * @version 0.0.1 
 * @author Curtis Pelissier <curtis.pelissier@lignusdev.com> 
 */
class Race implements MessageComponentInterface {
    protected $clients;
    protected $games;
    protected $linksPG;

    public function __construct() {
        $this->clients = new \SplObjectStorage;
        $this->games = array();
    }

    public function onOpen(ConnectionInterface $conn) {
        // Store the new connection to send messages to later
        $this->clients->attach($conn);

        $added = false;
        $g = null;
        foreach ($this->games as $id => $game) {
            if( count($game->getPlayers()) < MAXPLAYERS ){
                $this->linksPG[$conn->resourceId] = $game->getId();
                $g = $game;
                $g->addPlayer($conn);
                $added = true;
                break;
            }
        }

        if( !$added ){
            $g = new Game();
            $g->addPlayer($conn);
            $this->games[$g->getId()] = $g;
            $this->linksPG[$conn->resourceId] = $g->getId();
        }

        echo "New connection: ({$conn->resourceId}) in Game '{$g->getId()}' !\n";
        echo "The room has " . count($g->getPlayers()) . " players connected.";
    }

    public function onMessage(ConnectionInterface $from, $msg) {
        $datas = json_decode($msg, true);

        /**
         * We must check if the token is sent
         * If there is no token, we cant log the player
         * and link him to the current game.
         */
        if( !isset($datas['type']) ){
            $from->send('Invalid or inaccessible type');
            return;
        }

        if( $datas[''] ){

        } else if ( $datas[''] ){

        }

        echo "Recieving new message : $msg from {$from->resourceId}.\n";

        foreach ($this->clients as $client) {
            if ($from !== $client) {
                // The sender is not the receiver, send to each client connected
                $client->send( json_encode($datas, true) );
            }
        }
    }

    public function onClose(ConnectionInterface $conn) {
        // The connection is closed, remove it, as we can no longer send it messages
        $this->clients->detach($conn);

        $idG = $this->linksPG[$conn->resourceId];
        $this->games[$idG]->removePlayer($conn);
        unset($this->linksPG[$conn->resourceId]);

        echo "Connection {$conn->resourceId} has disconnected\n";
    }

    public function onError(ConnectionInterface $conn, \Exception $e) {
        echo "An error has occurred: {$e->getMessage()}\n";

        $conn->close();
    }
}