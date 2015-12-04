<?php 

define('DBNAME', 'keytosecurity');
define('DBHOST', 'localhost');
define('DBUSER', 'root');
define('DBPASSWORD', '');

require_once dirname(dirname(__DIR__)) . '/core/Database.class.php';
Database::_init();

$req = "SELECT * FROM `quizzs` ORDER BY RAND() LIMIT 0,6";
$quizzs = array();
foreach (Database::_query( $req ) as $v ) {
    $q = new stdClass();
    $q->id = $v['id'];
    $q->question = $v['question'];
    $q->answers = json_decode($v['answers'], true);
    $q->correct = $v['correct'];

    $quizzs[$q->id] = $q;
}

echo json_encode($quizzs);