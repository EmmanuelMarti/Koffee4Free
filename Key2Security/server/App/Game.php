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
    public function __construct($id)
    {
        $id = keygen(50);
        $players = array();
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
     * @param int $connection The connection id
     * @return self
     * @since Version 0.0.1
     * @version 0.0.1
     */
    public function addPlayer($id){
        $this->players[$id] = $id;
        return true;
    }
}