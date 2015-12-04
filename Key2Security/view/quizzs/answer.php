<?php
foreach($quizzs as $k => $v): ?>
		<div class="panel-body">
			<?php $reponse = json_decode($v->answers, true);
				foreach ($reponse as $key => $r) {
					if($v->correct == $key){
						echo "<div>Correct</div>";
					}else{
						echo "<div>"
					}
		}

?>