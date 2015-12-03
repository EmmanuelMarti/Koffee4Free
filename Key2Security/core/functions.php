<?php

function debug($var){
	if(Conf::$debug>0){
		$debug = debug_backtrace();
		echo '<p>&nbsp</p><p><a href="#" onclick="$(this).parent().next(\'ol\').slideToggle(); return false;"><strong>'.$debug[0]['file'].'</strong> - line: '.$debug[0]['line'].'</a></p>';
		echo '<ol style="display:none;">';

		foreach($debug as $k=>$v){
			if($k>0){
				echo '<li><strong>'.$v['file'].'</strong> - line: '.$v['line'].'</li>';
			}
		}
		echo '</ol>';
		echo '<pre>';
		print_r($var);
		echo '</pre>';
	}
}

/**
 * Génère une clé d'une certaine taille
 *
 * @author Curtis Pelissier <curtis.pelissier@laposte.net>
 *
 * @param int $taille la taille de la clé
 * @return string
 */
function keygen($taille = 32) {
    $str = null;
    for ($i = $taille; $i > 0; $i--) {
        $a = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $long = strlen($a);
        $str.= substr($a, mt_rand(0, $long - 1) , 1);
    }
    return $str;
}