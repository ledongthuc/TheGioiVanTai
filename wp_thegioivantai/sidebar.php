<?php if ( !is_user_logged_in() ) : ?> 
	<div class="art-block clearfix">
		
		<div class="art-blockheader">
			<h3 class="t">Tài khoản</h3>
		</div>
		<br/>
		<center><a class="art-button" href="<?php echo wp_login_url(); ?>?action=register">Đăng ký</a></center>
		<br/>
		<center><a class="art-button" href="<?php echo wp_login_url(); ?>">Đăng nhập</a></center>
	</div>
<?php else : ?>
	<!--<div class="art-block clearfix">
		<div class="art-blockheader">
			<h3 class="t">Chào, Le Dong Thuc</h3>
		</div>
		<br/>
		<center><a class="art-button" href="#">Theo dõi chuyến xe</a></center>
		<br/>
		<center><a class="art-button" href="#">Chi tiết tài khoản</a></center>
		<br/>
		<center><a class="art-button" href="#">Đổi mật khẩu</a></center>
	</div>-->
<?php endif; ?>
	
	<!--<div class="art-block clearfix">
		<div class="art-blockheader">
			<h3 class="t">Sàn mua bán xe</h3>
		</div>
		<table>
			<tr>
				<td>
					<img src="http://www.letgo24.com/Service/ResizeImage/60/60/e21cb771-1499-456b-9eac-99fae2d112d5.jpg" alt="">
				</td>
				<td>
					<h3>Toyota</h3>
					<br>
					<strong>Địa điểm: </strong>
					TP. Hồ Chí Minh                
					<br><strong>Giá: </strong>950,000,000
				</td>
			</tr>
			
			<tr>
				<td>
					<img src="http://www.letgo24.com/Service/ResizeImage/60/60/e21cb771-1499-456b-9eac-99fae2d112d5.jpg" alt="">
				</td>
				<td>
					<h3>Toyota</h3>
					<br>
					<strong>Địa điểm: </strong>
					TP. Hồ Chí Minh                
					<br><strong>GiẠ</strong>950,000,000
				</td>
			</tr>
			
			<tr>
				<td>
					<img src="http://www.letgo24.com/Service/ResizeImage/60/60/e21cb771-1499-456b-9eac-99fae2d112d5.jpg" alt="">
				</td>
				<td>
					<h3>Toyota</h3>
					<br>
					<strong>Địa điểm: </strong>
					TP. Hồ Chí Minh                
					<br><strong>Giá: </strong>950,000,000
				</td>
			</tr>
		</table>
	</div>-->

	<div class="art-block clearfix">
		<div class="art-blockheader">
			<h3 class="t">Tin tức</h3>
		</div>
		<table>
			<?php query_posts('showposts=5&cat=4'); ?>
			<?php while (have_posts()) : the_post(); ?>
			<tr>
				<td>
					<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
					<?php the_excerpt(); ?>
				</td>
			</tr>
			<?php endwhile; ?>
		</table>
	</div>