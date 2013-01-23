<?php get_header(); ?>

<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">
		
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php
	if(in_category('2')) {
        include("single-vehicle.php");
    } 
    else if(in_category('3')) 
    {
        include("single-goods.php");
    } 
    else
    {
        include("single-news.php");
    } 
?>
<?php endwhile; endif; ?>

</div>
		<div class="art-layout-cell art-sidebar1 clearfix">
			<?php get_sidebar(); ?>
		</div>
		
	</div>
</div>

<?php get_footer(); ?>
