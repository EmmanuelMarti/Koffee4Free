<div class="panel panel-default">
	<h1>A vous de jouer</h1>
	<form action="<?php echo Router::url('quizzs/answer'); ?>" method="POST">
			<?php foreach($quizzs as $k => $v){ ?>
				<div class="panel-body">
					<h4><?php echo $v->question; ?></h4>
					<?php $reponse = json_decode($v->answers, true);
						foreach ($reponse as $key => $r){
							echo "<p><input type = \"radio\" name=\"reponse_{$v->id}\" value=\"$key\" />   ".$r['text']."</p>";
						}

				echo '</div>';
			}?>
		<input type="submit" value="Envoyer" id="quizz" />
	</form>
</div>