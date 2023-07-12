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
    <meta property="og:url" content="https://www.sweetsound.co.za/musiq/releases">
  	<meta property="og:image:secure" content="https://www.sweetsound.co.za/family/images/home/ssm.png">
  	<meta name="description" content="Get Sweet Sound Musiq's all releases. We have over 60 singles and counting, and 8 EPs with more than 5 songs and 2 Mixtapes. Expose your ears to Sweet Sound">
  	<meta property="og:site_name" content="Sweet Sound Musiq">
  	<meta property="og:title" content="Sweet Sound Musiq | Releases">
  	<meta property="og:type" content="website">
  	<title>Sweet Sound Musiq | Releases</title>
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
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/ssm2.png);">
        <div class="bradcumbContent">
            <p>Musiq / Singles</p>
            <h2>Singles</h2>
        </div>
    </section><br>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Album Catagory Area Start ##### -->
    <section class="album-catagory section-padding-100-0">
        <div class="container">
            <div class="row oneMusic-albums">
            <?php
                $query_songs = "SELECT * FROM musiq, artists WHERE musiq.artist_id = artists.artist_id AND musiq.active_yn = '1' ORDER BY musiq.musiq_id DESC";
                $result_set = mysqli_query($conn, $query_songs);

                while ($row = mysqli_fetch_assoc($result_set)) {
            ?>
                    <!-- Single Album -->
                    <div class="col-12 col-sm-4 col-md-3 col-lg-2 single-album-item">
                        <div class="single-album">
                            <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                <img src="images/musiq_images/<?php echo $row['musiq_coverart'] ?>" alt="">
                            </a>
                            <div class="album-info">
                                <a href="<?php echo $row['artist_smart_url'].'/'.$row['musiq_smart_url'] ?>">
                                    <h5><?php echo $row['musiq_title'] ?></h5>
                                </a>
                                <p><?php echo $row['artist_name']; ?></p>
                            </div>
                        </div>
                    </div>
              <?php
                  }
              ?>
            </div>
        </div>
    </section>
    <!-- ##### Album Catagory Area End ##### -->

    <!-- ##### Buy Now Area Start ##### -->
    <div class="oneMusic-buy-now-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="load-more-btn text-center">
                        <a href="musiq/" class="btn oneMusic-btn">Load More <i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Buy Now Area End ##### -->

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
