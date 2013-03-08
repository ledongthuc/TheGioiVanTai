<?php get_header(); ?>

</header>

<?php 
    $loaiXe = isset($_POST["vtid"]) == true ? $_POST["vtid"] : -1;
    if(isset($_POST["ptid"]) == true) {
        $diemDi = $_POST["ptid"];
    } else if(isset($_GET["ptid"]) == true) {
        $diemDi = $_GET["ptid"];
    } else {
        $diemDi = -1;
    }
	
	$diemDen = isset($_POST["dtid"]) == true ? $_POST["dtid"] : -1;
?>

<div class="art-sheet clearfix">
	<div class="art-layout-wrapper clearfix">
	
<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-post art-article">
            <div class="filterbox">
                <form action='<?php bloginfo('url'); ?>/?cat=3' method="post">
                <fieldset id="fieldsetfrom">
                    <label><strong>Loại Xe:</strong></label>
                     <?php print(Vehicle_dropdownlist("vtid", "vtid", true, $loaiXe)) ?>
					<label><strong>Chạy từ:</strong></label>
					
					<?php print(province_dropdownlist("ptid", "ptid", true, $diemDi)) ?>
				</fieldset>
				<fieldset id="fieldsetto">
					<label><strong>Điểm đến</strong></label>
					
					<?php print(province_dropdownlist("dtid", "dtid", true, $diemDen)) ?>
					
					<input type="submit" value="Tìm" class="btn btn-m submit btnSearch  ">
				</fieldset>
				</form>
        </div>
		
		<div class="yui-dt">
            <div class="pagingbox">
				<span style="font-size:13px;font-weight:bold; color:Red; float:left;margin: 10px 0px">Quý khách có nhu cầu tìm xe vui lòng liên lạc hot-line: (08) 6658 3792 / 090 33 44 899.</span>
            </div>
            <table cellspacing="0" cellpadding="0" border="0" class="">
                <thead>
                    <tr class="yui-dt-first yui-dt-last">
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label"></span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Mã số</span></div>
                        </th>
                        <th style="width: 106px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Đi từ</span></div>
                        </th>
                        <th style="width: 90px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Q/H</span></div>
                        </th>
                        <th style="width: 106px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Đến</span></div>
                        </th>
                        <th style="width: 90px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Q/H</span></div>
                        </th>
                        <th style="width: 179px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Loại hàng</span></div>
                        </th>
                        <th style="width: 75px;" rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Yêu cầu xe</span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Ngày giao</span></div>
                        </th>
                        <th rowspan="1" colspan="1">
                            <div class="yui-dt-liner">
                                <span class="yui-dt-label">
                                    Lượt xem</span></div>
                        </th>
                    </tr>
                </thead>
				<tbody>
				<?php
					
				
                    if ($loaiXe == -1 && $diemDi == -1 && $diemDen == -1)
					{
						$args = array(
									   'post_type' => 'chuyen_hang',
									   'posts_per_page' => 2,
									   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
									   );
					}
					else
					{
						$args = array(
								   'post_type' => 'chuyen_hang',
								   'posts_per_page' => 2,
								   'paged' => ( get_query_var('paged') ? get_query_var('paged') : 1),
								   'meta_query' => array(
													'relation' => 'OR',
													array(
														'key' => 'vehicle',
														'value' => $loaiXe,
														'compare' => 'LIKE'
												   ),
												   array(
														'key' => 'from',
														'value' => $diemDi,
														'compare' => 'LIKE'
												   ),
												   array(
														'key' => 'to',
														'value' => $diemDen,
														'compare' => 'LIKE'
												   )),
								   );
					}

					query_posts($args);

					while (have_posts()) : the_post();
					/* Do whatever you want to do for every page... */
				?>
					<tr>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>">
									
									<img src="<?php bloginfo('template_directory');?>/img/1.gif" alt="Xe tải">
									
								</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
						 
								<a href="<?php the_permalink(); ?>">
									<?php echo get_field("code"); ?>
								 </a>
								
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="<?php echo get_province_name_from_id(get_field('from')); ?>">
									<?php echo get_province_name_from_id(get_field("from")); ?></a>
								
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="<?php echo get_province_name_from_id(get_field('from_province')); ?>">
									<?php echo get_province_name_from_id(get_field("from_province")); ?></a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="<?php echo get_province_name_from_id(get_field('to')); ?>">
									<?php echo get_province_name_from_id(get_field("to")); ?></a>
								
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>" class="link-filter" title="<?php echo get_province_name_from_id(get_field('to_province')); ?>">
									<?php echo get_province_name_from_id(get_field("to_province")); ?></a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<?php the_content(); ?>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<a href="<?php the_permalink(); ?>">
									<?php echo get_vehicles_from_id(get_field("vehicle")); ?>
								</a>
							</div>
						</td>
						<td>
							<div class="yui-dt-liner">
								<?php echo get_field("delivery_date"); ?>
							</div>
						</td>						
						<td align="center">
							<div class="yui-dt-liner">
								<a title="Chi tiết" href="<?php the_permalink(); ?>">
									<img src="<?php bloginfo('template_directory');?>/img/xem.png" alt="Xem chi tiet">
								</a>
							   
							</div>
						</td>
					</tr>
                <?php endwhile; ?>
				</tbody>
			</table>
			<?php if (show_posts_nav()) : ?>
				<div class="pagingbox">
					<div class="paging">
						<?php previous_posts_link('&laquo; Previous') ?>&nbsp&nbsp&nbsp<?php next_posts_link('More &raquo;') ?>
					</div>
				</div>
			<?php endif; ?>

<?php wp_reset_query(); ?>
<?php get_footer(); ?>