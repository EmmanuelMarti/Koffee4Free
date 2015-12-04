<div class="page-header">
	<h1>Editer un quizz</h1>
</div>

<form method="quizz" action="<?php echo Router::url('admin/quizz/edit/'.$id); ?>" class="form-horizontal">
	<?php echo $this->Form->input('question', 'Question'); ?>
	<?php echo $this->Form->input('id', 'hidden'); ?>
	<?php echo $this->Form->input('answers', 'Réponse1')?>
	<?php echo $this->Form->input('answers', 'Réponse2')?>
	<?php echo $this->Form->input('answers', 'Réponse3')?>
	<?php echo $this->Form->input('answers', 'Correction1')?>
	<?php echo $this->Form->input('answers', 'Correction2')?>
	<div class="form-group">
    	<div class="col-sm-offset-2 col-sm-10">
      		<button type="submit" class="btn btn-primary">Modifier</button>
    	</div>
  	</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- CKEditor -->
<script src="<?php echo Router::webroot('js/ckeditor/ckeditor.js'); ?>"></script>
<script src="<?php echo Router::webroot('js/ckeditor/adapters/jquery.js'); ?>"></script>
<script type="text/javascript">
	var editor = CKEDITOR.replace( 'content', {
		filebrowserBrowseUrl: '<?php echo Router::url('admin/medias/index/'.$id); ?>',
		filebrowserWindowWidth: '800',
    	filebrowserWindowHeight: '550'
	});
</script>