<div class="panel panel-default">
	<h1>A vous de jouer</h1>
	<?php echo"<form action=\"answer.php\" method=\"POST\" >";
		foreach($quizzs as $k => $v){ ?>
			<div class="panel-body">
				<h4><?php echo $v->question; ?></h4>
				<?php $reponse = json_decode($v->answers, true);
					foreach ($reponse as $key => $r) {
						echo "<p><input type = \"radio\" name=\"reponse_{$v->id}\" value=\"$key\" />   ".$r['text']."</p>";
					}

			echo '</div>';
		}

		echo "<button type=\"submit\" class=\"btn btn-success\">Envoyer</input>
	</form>"

		//var_dump($reponse)?>
	<?php 
		/*$json = array(
			"1" => array(
				"text" => "str",
				"img" => "path/to/img"
			),
			"2" => array(
				"text" => "str",
				"img" => "path/to/img"
			),
			"3" => array(
				"text" => "str",
				"img" => "path/to/img"
			)
		);
		echo json_encode($json, true);*/
	 ?>
</div>