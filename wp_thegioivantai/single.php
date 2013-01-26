<?php get_header(); ?>

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

<?php if (in_category('4')) : ?>
	</div>
		<div class="art-layout-cell art-sidebar1 clearfix">
			<?php get_sidebar(); ?>
<?php endif; ?>

<?php get_footer(); ?>
