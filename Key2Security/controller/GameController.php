<?php

/**
 * Manages the game controller
 *
 * @category Controller
 * @package K2S
 * @since Version 0.0.1
 * @version 0.0.1 
 * @author Curtis Pelissier <curtis.pelissier@lignusdev.com> 
 */
class GameController extends Controller{

	function index(){
        $wsAddr = isset($_SERVER['SERVER_NAME']) ? $_SERVER['SERVER_NAME'] : '127.0.0.1';

		$this->loadModel('Game');
        $this->set(array(
            'wsAddr' => $wsAddr
        ));
	}
}