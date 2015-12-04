<?php 

/**
 * File Game.php
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

use Ratchet\ConnectionInterface;

/**
 * Manages a games between X players
 *
 * @category Server\App
 * @package K2S
 * @since Version 0.0.1
 * @version 0.0.1 
 * @author Curtis Pelissier <curtis.pelissier@lignusdev.com> 
 */
class Game
{
    /**
     * The unique id
     * @var string
     */
    protected $id;

    /**
     * The players id connections
     * @var array
     */
    protected $players;

    /**
     * Constructor of the class
     *
     * @param mixed $id the param
     * @since Version 0.0.1
     * @version 0.0.1
     */
    public function __construct()
    {
        $this->id = keygen(50);
        $players = array();
    }

    /**
     * Gets the The unique id.
     *
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Sets the The unique id.
     *
     * @param string $id the id
     *
     * @return self
     */
    protected function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Gets the The players id connections.
     *
     * @return array
     */
    public function getPlayers()
    {
        return $this->players;
    }

    /**
     * Sets the The players id connections.
     *
     * @param array $players the players
     *
     * @return self
     */
    protected function setPlayers(array $players)
    {
        $this->players = $players;

        return $this;
    }

    /**
     * Attach a player to a game
     *
     * @param ConnectionInterface $conn The connection
     * @return self
     * @since Version 0.0.1
     * @version 0.0.1
     */
    public function addPlayer($conn){
        $this->players[$conn->resourceId] = $conn;
        return $this;
    }

    /**
     * Detach a player to a game
     *
     * @param ConnectionInterface $conn The connection
     * @return self
     * @since Version 0.0.1
     * @version 0.0.1
     */
    public function removePlayer($conn){
        unset($this->players[$conn->resourceId]);
        return $this;
    }

    

}