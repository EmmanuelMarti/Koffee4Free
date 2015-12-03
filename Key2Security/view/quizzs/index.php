<div class="panel panel-default">
	<h1>A vous de jouer</h1>
	<?php echo"<form action=\"\""
		foreach($quizzs as $k => $v): ?>
		<div class="panel-body">
			<h4><?php echo $v->question; ?></h4>
			<?php $reponse = json_decode($v->answers, true);
				foreach ($reponse as $key => $r) {
				echo "<p><input type = \"radio\" />   ".$r['text']."</p>";
		}

		//var_dump($reponse)?>
		</div>
	<?php endforeach; ?>
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