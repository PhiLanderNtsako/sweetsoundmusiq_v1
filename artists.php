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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta property="og:url" content="https://www.sweetsound.co.za/musiq/artists">
  	<meta property="og:image:secure" content="https://www.sweetsound.co.za/family/images/home/slide-4.jpg">
  	<meta name="description" content="Sweet Sound Musiq record label is the home to talented and determined artists. Learn more about them below.">
  	<meta property="og:site_name" content="Sweet Sound Musiq">
  	<meta property="og:title" content="Sweet Sound Musiq | Artists">
  	<meta property="og:type" content="website">
  	<title>Sweet Sound Musiq | Artists</title>
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

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/ssm1.png);">
        <div class="bradcumbContent">
            <p>Our Lovely</p>
            <h2>Artists</h2>
        </div>
    </section><br><br>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Events Area Start ##### -->
    <section class="events-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="browse-by-catagories catagory-menu d-flex flex-wrap align-items-center mb-70">
                        <a href="#" data-filter="*">Browse All</a>
                        <a href="#" data-filter=".a" class="active">A</a>
                        <a href="#" data-filter=".b">B</a>
                        <a href="#" data-filter=".c">C</a>
                        <a href="#" data-filter=".d">D</a>
                        <a href="#" data-filter=".e">E</a>
                        <a href="#" data-filter=".f">F</a>
                        <a href="#" data-filter=".g">G</a>
                        <a href="#" data-filter=".h">H</a>
                        <a href="#" data-filter=".i">I</a>
                        <a href="#" data-filter=".j">J</a>
                        <a href="#" data-filter=".k">K</a>
                        <a href="#" data-filter=".l">L</a>
                        <a href="#" data-filter=".m">M</a>
                        <a href="#" data-filter=".n">N</a>
                        <a href="#" data-filter=".o">O</a>
                        <a href="#" data-filter=".p">P</a>
                        <a href="#" data-filter=".q">Q</a>
                        <a href="#" data-filter=".r">R</a>
                        <a href="#" data-filter=".s">S</a>
                        <a href="#" data-filter=".t">T</a>
                        <a href="#" data-filter=".u">U</a>
                        <a href="#" data-filter=".v">V</a>
                        <a href="#" data-filter=".w">W</a>
                        <a href="#" data-filter=".x">X</a>
                        <a href="#" data-filter=".y">Y</a>
                        <a href="#" data-filter=".z">Z</a>
                        <a href="#" data-filter=".number">0-9</a>
                    </div>
                </div>
            </div>
            <div class="row oneMusic-albums">
            <?php
                $query_artists = "SELECT * FROM artists LEFT JOIN social_media_links ON artists.artist_id = social_media_links.artist_id ORDER BY artists.artist_name ASC";
                $result_set = mysqli_query($conn, $query_artists);

                while($row = mysqli_fetch_assoc($result_set)){
                    $data_filter = strtolower($row['artist_name'][0]);
                    $style = 'style="font-size: 1.5rem; padding:0.5em;"';
            ?>
                  <!-- Single Event Area -->
                  <div class="col-12 col-md-6 col-lg-4 single-album-item <?php echo $data_filter ?>">
                      <div class="single-event-area mb-30">
                          <div class="event-thumbnail">
                              <img src="images/artists_images/<?php echo $row['artist_image'] ?>" alt='' style="height:300px; width:600;object-fit:cover;">
                          </div>
                          <div class="event-text">
                              <a href="<?php echo $row['artist_smart_url']?>">
                                  <h4><?php echo $row['artist_name'] ?></h4>
                              </a>
                              <div class="event-meta-data">
                                  <a href="<?php echo $row['artist_smart_url']?>" class="event-place"><?php echo $row['artist_bio'] ?></a>
                              </div>
                              <a href="<?php echo $row['sml_whatsapp'] ?>" class="btn see-more-btn" <?php echo $style ?>><i class="fa fa-whatsapp"></i> </a>
                              <a href="<?php echo $row['sml_facebook'] ?>" class="btn see-more-btn" <?php echo $style ?>><i class="fa fa-facebook"></i> </a>
                              <a href="<?php echo $row['sml_twitter'] ?>" class="btn see-more-btn" <?php echo $style ?>><i class="fa fa-twitter"></i> </a>
                              <a href="<?php echo $row['sml_instagram'] ?>" class="btn see-more-btn" <?php echo $style ?>><i class="fa fa-instagram"></i> </a>
                          </div>
                      </div>
                  </div>
            <?php
                }
            ?>
            </div>
        </div>
    </section>
    <!-- ##### Events Area End ##### -->

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
