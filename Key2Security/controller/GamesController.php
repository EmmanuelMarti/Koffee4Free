<?php 
class GamesController extends Controller{

	function index(){
		$this->loadModel('Game');
	}
}


?>