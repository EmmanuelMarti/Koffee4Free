<div class="page-header">
	<h1><?php echo $total; ?> Question</h1>
</div>

<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Question</th>
				<th>Réponse</th>
				<th>Réponse Juste</th>
			</tr>
		</thead>
		<tbody>
		<?php foreach ($quizzs as $k=>$v): ?>
			<tr>
				<td><?php echo $v->id; ?></td>
				<td><?php echo $v->question; ?></td>
				<td><?php echo $v->answers; ?></td>
				<td><?php echo $v->correct; ?></td>
				<td>
					<a href="<?php echo Router::url('admin/quizzs/edit/'.$v->id); ?>">Editer</a>
					<a onclick="return confirm('Voulez vous vraiment supprimer ce contenu');" href="<?php echo Router::url('admin/quizzs/delete/'.$v->id); ?>">Supprimer</a>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
</div>

<a href="<?php echo Router::url('admin/quizzs/edit'); ?>" class="btn btn-primary" role="button">Ajouter un quizz</a>