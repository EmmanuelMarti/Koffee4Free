<?php $title_for_layout = $srvoiture->name; ?>

<div class="page-header">
	<h1><?php echo $srvoiture->name; ?></h1>
</div>

<?php echo $srvoiture->content; ?>

<a href="http://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="KeyToSecurity">Tweet</a>
<a name="fb_share" type="button" share_url="<?php echo Router::url("srvoitures/view/id:{$srvoiture->id}/slug:$srvoiture->slug"); ?>"></a>
<div class="fb-like" data-href="<?php echo Router::url("srvoitures/view/id:{$srvoiture->id}/slug:$srvoiture->slug"); ?>" data-layout="button" data-action="like" data-show-faces="false" data-share="false"></div>
<iframe name="frame1" width="1" height="1" align="middle" src="http://bouton-facebook.over-blog.com/2014/06/zz.html" frameborder="no" scrolling="no"></iframe>

<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
<script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>