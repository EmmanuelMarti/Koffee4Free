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

    public function __construct() {
        $this->clients = new \SplObjectStorage;
        $this->games = array();
    }

    public function onOpen(ConnectionInterface $conn) {
        // Store the new connection to send messages to later
        $this->clients->attach($conn);

        echo "New connection: ({$conn->resourceId}) !\n";
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

        $token = new Token( $from->resourceId );
        if($token->getUser()){
            $battle = $token->getUser()->getCurrentBattle();
        }

        switch ($datas['type']) {
            case 'combat':
                break;
            case 'chat':
                
                break;
            case 'panel':
                
                break;
            case 'register':            
                //$battle->addPlayer( $token->getUser() );
                break;
            default:
                break;
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

        echo "Connection {$conn->resourceId} has disconnected\n";
    }

    public function onError(ConnectionInterface $conn, \Exception $e) {
        echo "An error has occurred: {$e->getMessage()}\n";

        $conn->close();
    }
}