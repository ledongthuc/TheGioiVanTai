<?php get_header(); ?>

</header>
<div class="art-sheet clearfix">
	<div class="art-layout-wrapper clearfix">

<div class="art-content-layout">
	<div class="art-content-layout-row">
		<div class="art-layout-cell art-content clearfix">
			<article class="art-post art-article">
				<div class="art-postcontent art-postcontent-0 clearfix">
					<div class="art-content-layout-wrapper layout-item-0">
						<div class="art-content-layout">
							<div class="art-content-layout-row">
								<div class="art-layout-cell layout-item-1" style="width: 100%" >
									<h3>Danh mục Hàng hóa mới nhất</h3>
									<table id="one-column-emphasis" summary="2007 Major IT Companies' Profit" width="100%" border="0px">
										<thead>
											<tr>
												<th width="10%" scope="col"></th>
												<th width="13%" scope="col"></th>
												<th width="67%" scope="col"></th>
												<th width="10%" scope="col"></th>
											</tr>
										</thead>
										<tbody>
										<?php query_posts('showposts=5&post_type=chuyen_hang'); ?>
										<?php while (have_posts()) : the_post(); ?>
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="<?php the_permalink(); ?>"><?php echo get_field("code"); ?></a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<img alt="" src="<?php bloginfo('template_directory');?>/img/icon_load60x40.png">
													</div>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>">
														<strong>Từ: </strong>
														<?php echo get_field("from"); ?><strong class="muiten">→</strong><span> Đến: </span>
														<?php echo get_field("to"); ?>
														<img alt="" src="<?php bloginfo('template_directory');?>/img/icon_new_1.gif"> 
														<br>
														<strong>Ngày Giao: </strong><?php echo get_field("delivery_date"); ?>
													</a>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>">
														<img src="<?php bloginfo('template_directory');?>/img/xem.png" alt=""></a>
												</td>
											</tr>
											<?php endwhile; ?>
										</tbody>
										<tfoot>
											<tr>
												<td align="right" colspan="4" class="tfoot">
												   <a href="<?php bloginfo('url'); ?>/?cat=3"><strong>Tìm hàng</strong></a>
												</td>
												
											</tr>
										</tfoot>
									</table>      
				
									<!--<h3>Kho bãi mới nhất</h3>
									<table id="one-column-emphasis" summary="2007 Major IT Companies' Profit" width="100%">
										<thead>
											<tr>
												<th width="10%" scope="col"></th>
												<th width="13%" scope="col"></th>
												<th width="67%" scope="col"></th>
												<th width="10%" scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">K002006</a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/icons/kho_ico.gif" alt=""></a>
													</div>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
													<strong>Cho thuê </strong><br>
															Kho thường, cụm công nghiệp Tân Hồng |Bắc Ninh | Bắc Ninh
													<br><strong>Diện tích: </strong>8,000m2, <br><strong>Giá: </strong>45,000 VND/M2
													<br> 
													
													<img alt="" src="http://www.letgo24.com/Content01/images/icons/icon_new_1.gif"> 
													
												   
													</a>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/xem.png" alt=""></a>
												</td>
											</tr>
		
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">K002006</a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/icons/kho_ico.gif" alt=""></a>
													</div>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
													<strong>Cho thuê </strong><br>
															Kho thường, cụm công nghiệp Tân Hồng |Bắc Ninh | Bắc Ninh
													<br><strong>Diện tích: </strong>8,000m2, <br><strong>Giá: </strong>45,000 VND/M2
													<br> 
													
													<img alt="" src="http://www.letgo24.com/Content01/images/icons/icon_new_1.gif"> 
													
												   
													</a>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/xem.png" alt=""></a>
												</td>
											</tr>
		
											<tr>
												<td>
													<div class="yui-dt-liner">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">K002006</a>
													</div>
												</td>
												<td>
													<div class="thumbsforhomepage">
														<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/icons/kho_ico.gif" alt=""></a>
													</div>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
													<strong>Cho thuê </strong><br>
															Kho thường, cụm công nghiệp Tân Hồng |Bắc Ninh | Bắc Ninh
													<br><strong>Diện tích: </strong>8,000m2, <br><strong>Giá: </strong>45,000 VND/M2
													<br> 
													
													<img alt="" src="http://www.letgo24.com/Content01/images/icons/icon_new_1.gif"> 
													
												   
													</a>
												</td>
												<td>
													<a href="/Storage/Details/2006/Cho-thue-Kho--Bac-Ninh-Bac-Ninh">
														<img src="http://www.letgo24.com/Content01/images/xem.png" alt=""></a>
												</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<td align="right" colspan="4" class="tfoot">
													<a href="/Storage/list"><strong>T�m kho</strong></a>
												</td>
											</tr>
										</tfoot>
									</table>-->
				
									<h3>Chuyến xe mới nhất</h3>
									<table id="one-column-emphasis" summary="2007 Major IT Companies' Profit" width="100%">
										<thead>
											<tr>
												<th width="10%" scope="col"></th>
												<th width="13%" scope="col"></th>
												<th width="67%" scope="col"></th>
												<th width="10%" scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<?php query_posts('showposts=5&post_type=chuyen_xe'); ?>
											<?php while (have_posts()) : the_post(); ?>
											<tr>
												<td>
													<div class="yui-dt-liner">
													  <a href="<?php the_permalink(); ?>">
													   <?php echo get_field("code"); ?>
													   </a></div>
												</td>
												<td>
													<div class="thumbsforhomepage">
													<img width="60" height="40" src="<?php bloginfo('template_directory');?>/img/1.gif" alt="">
													</div>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>"><strong>Từ: </strong>
														<?php echo get_field("from"); ?>
														
														|<strong class="muiten">→</strong><span> Đến: </span>
														<?php echo get_field("to"); ?>
														
														 
														<img alt="" src="<?php bloginfo('template_directory');?>/img/icon_new_1.gif"> 
														
														
														<br>
														<strong>Ngày Giao: </strong>
														<?php echo get_field("delivery_date"); ?>
														<br><strong>Giá: </strong><?php echo get_field("price"); ?>
													</a>
												</td>
												<td>
													<a href="<?php the_permalink(); ?>">
														<img src="<?php bloginfo('template_directory');?>/img/xem.png" alt=""></a>
												</td>
											</tr>
											<?php endwhile; ?>
										</tbody>
										<tfoot>
											<tr>
												<td align="right" colspan="4" class="tfoot">
													<a href="<?php bloginfo('url'); ?>/?cat=2"><strong>Tìm xe</strong></a>
												</td>
												
											</tr>
										</tfoot>
									</table>

									<h3>Tìm kiếm theo địa phương</h3>            
									<div class="box1">
										<div class="inner">
											<div class="wrapper">
												<ul class="list1 fleft">
													<li style="width: 140px; float: left"><a href="/load/List?ptid=1">An giang
														(8)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=2">Bà Rịa Vũng Tàu
														(31)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=5">Bắc Giang
														(12)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=4">Bắc Kạn
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=3">Bạc Liêu
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=6">Bắc Ninh
														(10)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=7">Bến Tre
														(7)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=9">Bình Định
														(15)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=8">Bình Dương
														(128)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=10">Bình Phước
														(23)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=11">Bình Thuận
														(11)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=12">Cà Mau
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=14">Cần Thơ
														(16)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=13">Cao Bằng
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=15">Đà Nẵng
														(33)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=16">Đắc Lắk
														(18)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=17">Đắc Nông
														(7)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=18">Điện Biên
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=19">Đồng Nai
														(93)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=20">Đồng Tháp
														(11)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=21">Gia Lai
														(16)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=22">Hà Giang
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=23">Hà Nam
														(28)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=24">Hà Nội
														(116)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=64">Hà Tây
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=25">Hà Tĩnh
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=26">Hải Dương
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=27">Hải Phòng
														(41)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=28">Hậu Giang
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=29">Hoà Bình
														(4)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=30">Hưng Yên
														(13)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=31">Khánh Hoà
														(20)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=32">Kiên Giang
														(3)</a> </li>
												</ul>
												
												<ul class="list1 fleft">
													<li style="width: 140px; float: left"><a href="/load/List?ptid=33">Kon Tum
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=34">Lai Châu
														(0)</a> </li>                
														
															<li style="width: 140px; float: left"><a href="/load/List?ptid=39">Nam Định
														(7)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=40">Nghệ An
														(17)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=66">Ngoài Việt Nam
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=41">Ninh Bình
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=42">Ninh Thuận
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=43">Phú Thọ
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=44">Phú Yên
														(8)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=45">Quảng Bình
														(14)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=46">Quảng Nam
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=47">Quảng Ngãi
														(15)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=48">Quảng Ninh
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=49">Quảng Trị
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=50">Sóc Trăng
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=51">Sơn La
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=52">Tây Ninh
														(19)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=53">Thái Bình
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=54">Thái Nguyên
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=55">Thanh Hoá
														(8)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=56">Thừa Thiên Huế
														(4)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=57">Tiền Giang
														(11)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=58">TP. Hồ Chí Minh
														(542)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=59">Trà Vinh
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=60">Tuyên Quang
														(4)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=61">Vĩnh Long
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=62">Vĩnh Phúc
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=63">Yên Bái
														(1)</a> </li>
													<li style="width: 140px; float: left"><a href="/load/List?ptid=35">Lâm Đồng
														(15)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=36">Lạng Sơn
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=37">Lào Cai
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/load/List?ptid=38">Long An
														(29)</a> </li>
												</ul>
												
												<ul class="list1 fleft">
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=1">An giang
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=2">Bà Rịa Vũng Tàu
														(13)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=5">Bắc Giang
														(11)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=4">Bắc Kạn
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=3">Bạc Liêu
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=6">Bắc Ninh
														(32)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=7">Bến Tre
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=9">Bình Định
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=8">Bình Dương
														(24)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=10">Bình Phước
														(7)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=11">Bình Thuận
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=12">Cà Mau
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=14">Cần Thơ
														(11)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=13">Cao Bằng
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=15">Đà Nẵng
														(30)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=16">Đắc Lắk
														(13)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=17">Đắc Nông
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=18">Điện Biên
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=19">Đồng Nai
														(28)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=20">Đồng Tháp
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=21">Gia Lai
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=22">Hà Giang
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=23">Hà Nam
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=24">Hà Nội
														(181)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=64">Hà Tây
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=25">Hà Tĩnh
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=26">Hải Dương
														(9)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=27">Hải Phòng
														(104)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=28">Hậu Giang
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=29">Hoà Bình
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=30">Hưng Yên
														(13)</a> </li>
													 <li style="width: 140px; float: left"><a href="/vehicle/List?ptid=62">Vĩnh Phúc
														(2)</a> </li>
												</ul>
												
												<ul class="list1 fleft last">
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=42">Ninh Thuận
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=43">Phú Thọ
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=44">Phú Yên
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=45">Quảng Bình
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=46">Quảng Nam
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=47">Quảng Ngãi
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=48">Quảng Ninh
														(9)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=49">Quảng Trị
														(6)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=50">Sóc Trăng
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=51">Sơn La
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=52">Tây Ninh
														(4)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=53">Thái Bình
														(23)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=54">Thái Nguyên
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=55">Thanh Hoá
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=56">Thừa Thiên Huế
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=57">Tiền Giang
														(5)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=58">TP. Hồ Chí Minh
														(519)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=59">Trà Vinh
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=60">Tuyên Quang
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=61">Vĩnh Long
														(2)</a> </li>
														
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=31">Khánh Hoà
														(17)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=32">Kiên Giang
														(7)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=33">Kon Tum
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=34">Lai Châu
														(3)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=35">Lâm Đồng
														(8)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=36">Lạng Sơn
														(10)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=37">Lào Cai
														(13)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=38">Long An
														(2)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=39">Nam Định
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=40">Nghệ An
														(1)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=66">Ngoài Việt Nam
														(0)</a> </li>
													
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=41">Ninh Bình
														(2)</a> </li>
													<li style="width: 140px; float: left"><a href="/vehicle/List?ptid=63">Yên Bái
														(2)</a> </li>
										   
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="art-content-layout-wrapper layout-item-0" style="width: 67%">
						<div class="art-content-layout layout-item-2">
							<div class="art-content-layout-row">
								<div class="art-layout-cell layout-item-3" style="width: 33%" >
									<p><img width="58" height="151" alt="" src="<?php bloginfo('template_directory');?>/img/1-3.png" style="float:left;margin: 0 10px 0 -10px;"></p>
									<h1><center>Xe</center></h1>
									<p><center><a href="<?php bloginfo('url'); ?>/?cat=2" class="art-button">Tìm xe</a></center></p>
								</div>
								<div class="art-layout-cell layout-item-4" style="width: 34%" >
									<p><img width="58" height="151" alt="" src="<?php bloginfo('template_directory');?>/img/2-2.png" style="float:left;margin: 0 10px 0 -10px;"></p>
									<h1><center>Hàng</center></h1>
									<p><center><a href="<?php bloginfo('url'); ?>/?cat=3" class="art-button">Tìm hàng</a></center></p>
								</div>
								<!--<div class="art-layout-cell layout-item-5" style="width: 33%" >
									<p><img width="58" height="151" alt="" src="<?php bloginfo('template_directory');?>/img/3-2.png" style="float:left;margin: 0 10px 0 -10px;"></p>
									<h1><center>Kho</center></h1>
									<p><center><a href="#" class="art-button">Tìm kho</a></center></p>
								</div>-->
							</div>
						</div>
					</div>
				</div>
			</article>
		</div>
		<div class="art-layout-cell art-sidebar1 clearfix">
			<?php get_sidebar(); ?>

<?php get_footer(); ?>
