<?php
class Conf{

	static $debug = 1;

	static $database = array(

		'default' => array(
				'host'		=> 'localhost',
				'database' 	=> 'keytosecurity',
				'login'		=> 'root',
				'password'	=> ''
			),

	);

}

Router::prefix('cockpit', 'admin');

Router::connect('', 'homes/index');
Router::connect('cockpit', 'cockpit/srvoitures/index');
Router::connect('blog/:slug-:id', 'srvoitures/view/id:([0-9]+)/slug:([a-z0-9\-]+)');
Router::connect('blog/*', 'srvoitures/*');
Router::connect('game', 'game/index');
