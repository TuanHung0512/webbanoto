
<header>
  <div class="default-header">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-2">
          <div class="logo"> <a href="index.php"><img src="assets/images/logg.png" alt="image"/></a> </div>
        </div>
        <div class="col-sm-9 col-md-10">
          <div class="header_info">
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Chăm sóc khách hàng: </p>
              <a href="mailto:info@example.com">20221845@eaut.edu.vn</a> </div>
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Số điện thoại nhóm tôi: </p>
              <a href="tel:61-1234-5678-09">0986329841</a> </div>
            <div class="social-follow">
              <ul>
                <li><a href="https://www.facebook.com/tuan.hung.640346"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.facebook.com/tuan.hung.640346"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.facebook.com/tuan.hung.640346"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.facebook.com/tuan.hung.640346"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
                <li><a href="https://www.facebook.com/tuan.hung.640346"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              </ul>
            </div>
   <?php   if(strlen($_SESSION['login'])==0)
	{
?>
 <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Đăng Nhập</a> </div>
<?php }
else{

echo "Xin chào quý khách :3";
 } ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Navigation -->
  <nav id="navigation_bar" class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="header_wrap">
        <div class="user_login">
          <ul>
            <li class="dropdown"> <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>
<?php
$email=$_SESSION['login'];
$sql ="SELECT FullName FROM tblusers WHERE EmailId=:email ";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
	{

	 echo htmlentities($result->FullName); }}?><i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu">
           <?php if($_SESSION['login']){?>
            <li><a href="profile.php">Trang Cá Nhân</a></li>
              <li><a href="update-password.php">Đổi Mật Khẩu</a></li>
            <li><a href="my-booking.php">Giỏ Hàng</a></li>
            <li><a href="post-testimonial.php">Ý Kiến</a></li>
          <li><a href="my-testimonials.php">Lịch Sử Ý Kiến</a></li>
            <li><a href="logout.php">Đăng Xuất</a></li>
            <?php } else { ?>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Trang Cá Nhân</a></li>
              <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Đổi Mật Khẩu</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Giỏ Hàng</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Ý Kiến</a></li>
          <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Lịch Sử Ý Kiến</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Đăng Xuất</a></li>
            <?php } ?>
          </ul>
            </li>
          </ul>
        </div>
        <div class="header_search">
          <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
          <form action="#" method="get" id="header-search-form">
            <input type="text" placeholder="Search..." class="form-control">
            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
      </div>
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="nav navbar-nav">
          <li><a href="index.php">Trang Chủ</a>    </li>

          <li><a href="page.php?type=aboutus">Về Nhóm 8</a></li>
          <li><a href="car-listing.php">Siêu xe</a>
          <li><a href="page.php?type=faqs">FAQs</a></li>
          <li><a href="contact-us.php">Liên Hệ</a></li>

        </ul>
      </div>
    </div>
  </nav>
  <!-- Navigation end -->

</header>
