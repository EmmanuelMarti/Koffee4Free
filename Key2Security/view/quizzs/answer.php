<?php
foreach($quizzs as $k => $v){ ?>
		<div class="panel-body">
			<?php $reponse = json_decode($v->answers, true);
				if($v->correct == $_POST['reponse_'.$v->id]){
					echo "<div>Félicitations, vous avez trouvé la bonne reponse ! =)</div>";
				}else{
					echo "<div> Vous avez mal répondu la bonne réponse était ".$reponse[$v->correct]['text']." car ".$reponse[$v->id]['correction'];
				}
}

?>

<div class="mascotte">
	<img id="accueil" src="<?php echo Router::webroot('img/Mascotte-discu-quizz.png'); ?>">
</div>