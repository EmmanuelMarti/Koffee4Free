<div class="page-header">
	<h1>Securité Routière - Vélo</h1>
</div>

<div class="blog">
<?php foreach($srvelos as $k => $v): ?>

	<h2><?php echo $v->name; ?></h2>

	<div class="article"><?php echo $v->content; ?></div>
	<p><a href="<?php echo Router::url("srvelos/view/id:{$v->id}/slug:$v->slug"); ?>" title="<?php echo $v->name; ?>">Lire la suite &rarr;</a></p>

<?php endforeach; ?>


<nav>
  <ul class="pagination">
    <?php for($i=1; $i <= $page; $i++): ?>
    <li><a href="?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
   	 <?php endfor; ?>
  </ul>
</nav>

</div>