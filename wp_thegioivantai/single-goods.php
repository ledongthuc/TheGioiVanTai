</header>
<div class="art-sheet clearfix">
<div class="art-layout-wrapper clearfix">
<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">
		
<div id="my-border" class="grid_16 clearfix sb art-postcontent" style="position: relative; background: none repeat scroll 0% 0% transparent;">
	<div class="grid_9 alpha">
		<div class="thongtinxe">
			<h3 id="thongtinxeTitle">
				THÔNG TIN VỀ CHUYẾN HÀNG
			</h3>
			<div class="borderlist">
				<h4>
					<?php the_title(); ?>
				</h4>
				<div class="content">
					<table border="0" class="detail" width="100%">
						<tbody>
						<tr class="even">
							<th>
								<strong>
									Mã số</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Mã số", true); ?>
							</td>
						</tr>
						<tr class="odd">
							<th>
								<strong>
									Đi từ</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Đi từ", true); ?>
							</td>
						</tr>
						<tr class="even">
							<th>
								<strong>
									Đến</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Đến", true); ?>
							</td>
						</tr>
						<tr class="odd">
							<th>
								<strong>
									Ngày
									Giờ</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Ngày giờ", true); ?>
							</td>
						</tr>
						<tr class="odd">
							<th><strong>Giá</strong> </th>
							<td>
								<?php echo get_post_meta($post->ID, "Giá", true); ?>
							</td>
						</tr>
						
						<tr class="even">
							<th>
								<strong>
									Loại Xe
								</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Loại xe", true); ?>
							</td>
						</tr>
						<tr class="odd">
							<th>
								<strong>
									Trọng Tải</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Trọng tải", true); ?>
							</td>
						</tr>
						<tr class="even">
							<th>
								<strong>
									Kích Thước</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Kích thước", true); ?>
							</td>
						</tr>
						<tr class="odd">
							<th>
								<strong>
									Biển Số xe</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Biển số xe", true); ?>
							</td>
						</tr>
						
						<tr class="even">
							<th>
								<strong>Số lượng xe</strong>:
							</th>
							<td>
								<?php echo get_post_meta($post->ID, "Số lượng xe", true); ?>
							</td>
						</tr>
					</tbody>
				</table>
				<strong>Mô  tả chi tiết: </strong><?php print get_the_content(); ?>
				<?php comments_template(); ?>
			</div>
		</div>
	</div>
	<br>
	<input type="button" onclick="javascript:history.back()" value="Trở về" name="back" class="btn btn-m">
</div>

<?php if ($user_ID): ?>
<?php 
	$user_info = get_userdata($user_ID);
?>

	<div class="grid_5">
	<div class="thongtinlienlac">
		<h3>THÔNG TIN LIÊN LẠC</h3>
		<div id="detailMess">
			<fieldset>
				<h4>
					Công ty: <a href="#">
						van tai tu nhan </a></h4>
						
				<table width="100%" cellspacing="0" cellpadding="0" border="0" class="detail">
					<tbody><tr>
						<th>
							<label>
								Liên lạc:</label>
						</th>
						<td align="left">
							<strong>
								<?php print $user_info->display_name ?></strong>
						</td>
					</tr>
					<tr>
						<th>
							<label>
								Email</label>
						</th>
						<td align="left">
							<a href="mailto:<?php print $user_info->user_email ?>"><?php print $user_info->user_email ?></a>
						</td>
					</tr>
					<tr>
						<th>
							<label>
								Điện Thọai</label>
						</th>
						<td align="left">
							<strong>
								xxx.xxxx.xxxx
								</strong>
						</td>
					</tr>
					<tr>
						<th>
							<label>
								Yahoo ID</label>
						</th>
						<td>
							<a href="ymsgr:sendIM?<?php the_author_yim(); ?>" title="<?php the_author_yim(); ?>">
								<img border="0" src="http://opi.yahoo.com/online?u=<?php the_author_yim(); ?>&amp;m=g&amp;t=1"></a>
						</td>
					</tr>
					<tr>
						<th>
							<label>
								Skype ID</label>
						</th>
						<td>
							<script src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js" type="text/javascript"></script>
							<a href="skype:?chat" title="">
								<img style="border: none;" src="http://mystatus.skype.com/smallclassic/"></a>
						</td>
					</tr>
				</tbody></table>
				
			</fieldset>
		</div>
	</div>
</div>
<?php endif; ?>