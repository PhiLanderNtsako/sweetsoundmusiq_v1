<?php
    include 'inc/top-cache.php';
    include 'inc/config.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-162897830-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-162897830-1');
    </script>

    <!-- <base href="https://www.sweetsound.co.za/musiq/"> -->
    <meta charset="UTF-8">
    <meta name="description" content="Sweet Sound Musiq is an independent record label which is a division of Sweet Sound Family">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta property="og:url" content="https://www.sweetsound.co.za/musiq">
  	<meta property="og:image:secure" content="https://www.sweetsound.co.za/family/images/home/ssm.png">
  	<meta name="description" content="Official website of Sweet Sound Musiq. Sweet Sound Musiq is a record label and audio distributor & publisher of Sweet Sound Family.">
  	<meta property="og:site_name" content="Sweet Sound Musiq">
  	<meta property="og:title" content="Sweet Sound Musiq">
  	<meta property="og:type" content="website">
  	<title>Sweet Sound Musiq</title>
    <link rel="icon" href="img/core-img/favicon.png">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- ##### Header Area Start ##### -->
    <?php
        include 'inc/header.php';
    ?>
    <!-- ##### Header Area End ##### -->
    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/ssm1.png);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">We Are</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Sweet Sound MusiQ <span>Sweet Sound </span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="releases" class="btn oneMusic-btn mt-50">Musiq <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/ssm2.png);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Think Sweet Sound</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">Sweet Sound MusiQ <span>Sweet Sound</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="artists" class="btn oneMusic-btn mt-50">Artists <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->
    <!-- ##### Latest Albums Area Start ##### -->
    <section class="latest-albums-area section-padding-100" style="padding-bottom: 0.2em;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p>See what’s new</p>
                        <h2>New Releases</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ##### Latest Albums Area Start ##### -->
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                    <?php
                        $query_songs = "SELECT * FROM musiq, artists WHERE musiq.artist_id = artists.artist_id AND musiq.active_yn = '1' ORDER BY musiq.musiq_id DESC LIMIT 5";
                        $result_set = mysqli_query($conn, $query_songs);

                        while ($row = mysqli_fetch_assoc($result_set)) {
                    ?>
                            <div class="single-album">
                                <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                    <img src="images/musiq_images/<?php echo $row['musiq_coverart'] ?>" alt="">
                                </a>
                                <div class="album-info">
                                    <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                        <h5><?php echo $row['musiq_title'] ?></h5>
                                    </a>
                                    <p><?php echo $row['artist_name']; if(!empty($row['musiq_featured_artist'])){ echo ', '.$row['musiq_featured_artist'].''; }?></p>
                                </div>
                            </div>
                    <?php
                        }
                    ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Buy Now Area End ##### -->

    <!-- ##### Miscellaneous Area Start ##### -->
    <section class="miscellaneous-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- ***** Weeks Top ***** -->
                <div class="col-12 col-lg-4">
                    <div class="weeks-top-area mb-100">
                        <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                            <p>See what’s top</p>
                            <h2>This Week</h2>
                        </div>
                        <?php
                            $query_songs = "SELECT * FROM musiq, artists WHERE musiq.artist_id = artists.artist_id AND musiq.active_yn = '1' ORDER BY musiq.musiq_page_views DESC LIMIT 6";
                            $result_set = mysqli_query($conn, $query_songs);

                            while ($row = mysqli_fetch_assoc($result_set)) {
                        ?>
                              <!-- Single Top Item -->
                              <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="100ms">
                                  <div class="thumbnail">
                                      <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                          <img src="images/musiq_images/<?php echo $row['musiq_coverart'] ?>" alt="">
                                      </a>
                                  </div>
                                  <div class="content-">
                                      <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                          <h6><?php echo $row['musiq_title']; ?></h6>
                                      </a>
                                      <p><?php echo $row['artist_name']; ?></p>
                                  </div>
                              </div>
                        <?php
                            }
                        ?>
                    </div>
                </div>
                <!-- ***** New Hits Songs ***** -->
                <div class="col-12 col-lg-4">
                    <div class="new-hits-area mb-100">
                        <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                            <p>See what’s new</p>
                            <h2>New MusiQ</h2>
                        </div>
                        <?php
                            $query_songs = "SELECT * FROM musiq, artists WHERE musiq.artist_id = artists.artist_id AND musiq.active_yn = '1' ORDER BY musiq_id DESC LIMIT 6";
                            $result_set = mysqli_query($conn, $query_songs);

                            while ($row = mysqli_fetch_assoc($result_set)) {
                        ?>
                              <!-- Single Top Item -->
                              <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">
                                  <div class="first-part d-flex align-items-center">
                                      <div class="thumbnail">
                                          <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                              <img src="images/musiq_images/<?php echo $row['musiq_coverart'] ?>" alt="">
                                          </a>
                                      </div>
                                      <div class="content-">
                                          <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                              <h6><?php echo $row['musiq_title']; ?></h6>
                                          </a>
                                          <p><?php echo $row['artist_name']; if(!empty($row['musiq_featured_artist'])){ echo ', '.$row['musiq_featured_artist'].''; }?></p>
                                      </div>
                                  </div>
                              </div>
                        <?php
                            }
                        ?>
                    </div>
                </div>
                <!-- ***** Popular Artists ***** -->
                <div class="col-12 col-lg-4">
                    <div class="popular-artists-area mb-100">
                        <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                            <p>See who's the trending</p>
                            <h2>Artist</h2>
                        </div>
                        <?php
                            $query_artists = "SELECT * FROM artists ORDER BY artist_page_views LIMIT 6";
                            $result_set = mysqli_query($conn, $query_artists);

                            while ($row = mysqli_fetch_assoc($result_set)) {
                        ?>
                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="100ms">
                                <div class="thumbnail">
                                    <img src="images/artists_images/<?php echo $row['artist_image'] ?>" alt="">
                                </div>
                                <div class="content-">
                                  	<a href="<?php echo $row['artist_smart_url']?>">
                                    	<p><?php echo $row['artist_name']; ?></p>
                                  	</a>
                                </div>
                            </div><br>
                        <?php
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Miscellaneous Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <?php
        include 'inc/footer.php';
    ?>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>
</html>
<?php
    include 'inc/bottom-cache.php';
?>
