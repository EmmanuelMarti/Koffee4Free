<?php

require_once 'require.php';

use Ratchet\Server\IoServer;
use Ratchet\Http\HttpServer;
use Ratchet\WebSocket\WsServer;
use Server\App\Race;

echo "Lancement du serveur.\n";

$server = IoServer::factory(
    new HttpServer(
        new WsServer(
            new Race()
        )
    ),
    8080
);

$server->run();