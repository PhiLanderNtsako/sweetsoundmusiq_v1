<?php
    include 'inc/top-cache.php';
    include 'inc/config.php';

    if(!empty($_GET['title']) && !empty($_GET['artist'])){

        $musiq_smartURL = $_GET['title'];

        $query_musiqID = "SELECT musiq_id, musiq_smart_url FROM musiq WHERE musiq_smart_url = '$musiq_smartURL'";
        $result_set = mysqli_query($conn, $query_musiqID);
        $row = mysqli_fetch_assoc($result_set);

        if(!empty($row)){

            $musiq_id = $row['musiq_id'];

            $update_musiq = "UPDATE musiq SET page_views = page_views + 1 WHERE musiq_id = '$musiq_id'";
            mysqli_query($conn, $update_musiq);
            echo mysqli_error($conn);
        }

    }else{
        echo '<meta http-equiv="refresh" content="0; url= releases">';
    }

    $query_musiq2 = "SELECT * FROM musiq, artists WHERE musiq.artist_id = artists.artist_id AND musiq.musiq_id = '$musiq_id'";
    $result_set = mysqli_query($conn, $query_musiq2);
    $row2 = mysqli_fetch_assoc($result_set);

    if($row2['active_yn']){
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

    <!-- <base href="localhost/projects/sweet-sound-family/musiq/"> -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta property="og:url" content="https://www.sweetsound.co.za/musiq/<?php echo $row2['artist_smart_url'].'/'.$row2['musiq_smart_url'] ?>">
  	<meta property="og:image:secure" content="https://www.sweetsound.co.za/musiq/images/musiq_images/<?php echo $row2['musiq_coverart'] ?>">
  	<meta name="description" content="Stream or Download <?php echo $row2['musiq_title'].' ['.$row2['musiq_title'].'] by '.$row2['artist_name']; if(!empty($row2['musiq_featured_artist'])){ echo ' featuring '.$row2['musiq_featured_artist'].''; }?> on your favourite platform.">
  	<meta property="og:title" content="<?php echo $row2['artist_name'].' - '.$row2['musiq_title']; if(!empty($row2['musiq_featured_artist'])){ echo ' (feat. '.$row2['musiq_featured_artist'].')'; }?>">
  	<meta property="og:type" content="website">
  	<title><?php echo $row2['artist_name'].' - '.$row2['musiq_title']; if(!empty($row2['musiq_featured_artist'])){ echo ' (feat. '.$row2['musiq_featured_artist'].')'; }?></title>
    <!-- Favicon -->
    <link rel="icon" href="../img/core-img/favicon.png">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="../css/link-style.css">
    <link href="../css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body style="background-image: linear-gradient(rgba(22, 22, 22, 0.5), rgba(22, 22, 22, 0.5)), url('../images/musiq_images/<?php echo $row2['musiq_coverart'] ?>')">
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <?php
        if(!empty($musiq_id)){

            $query_musiq = "SELECT * FROM ((artists INNER JOIN  musiq ON artists.artist_id = musiq.artist_id) INNER JOIN musiq_links ON musiq.musiq_id = musiq_links.musiq_id) WHERE musiq.musiq_id = '$musiq_id'";
            $result_set = mysqli_query($conn, $query_musiq);
            $row=mysqli_fetch_assoc($result_set);
    ?>
            <div class="container">
                <div class="preview-img">
                    <img src="../images/musiq_images/<?php echo $row['musiq_coverart'] ?>">
                </div>
                <div>
                    <div class="details">
                        <h1><?php echo $row['musiq_title'] ?></h1>
                        <h2><?php echo $row2['artist_name'];if(!empty($row2['musiq_featured_artist'])){ echo ' (feat. '.$row2['musiq_featured_artist'].')'; }?></h2>
                    </div>
                </div>
                <div class="link-options">
                    <div class="link-options-header">
                        <div class="link-options-triangle-back"></div>
                        <div class="link-options-triangle"></div>
                    </div>
                    <?php if(!empty($row['link_whatsapp'])){

                            $url = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
                            $text = '/?text=Hi%20*'.$row['artist_name'].'*,%20Please%20Share%20*'.$row['musiq_title'].'*%20('.$row['musiq_type'].')%20From%20 '.$url;
                    ?>
                        <a href="https://wa.me/<?php echo $row['link_whatsapp'].$text?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/whatsapp.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-send"></i>
                                    Request
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_slikouronlife'])){ ?>

                        <a href="<?php echo $row['link_slikouronlife'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/slikouronlife.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-cloud-download"></i>
                                    Download
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_mediafire']) && $row['musiq_type'] = 'Album'){ ?>

                        <a href="<?php echo $row['link_mediafire'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/mediafire.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-download"></i>
                                    Download Zip
                                </div>
                            </div>
                        </a>
                        <?php }?>
                    <?php if(!empty($row['link_spotify'])){ ?>

                        <a href="<?php echo $row['link_spotify'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/spotify.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_youtube'])){ ?>

                        <a href="<?php echo $row['link_youtube'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/youtube.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-video-camera"></i>
                                    Watch
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_audiomack'])){ ?>

                        <a href="<?php echo $row['link_audiomack'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/audiomack.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_youtubemusic'])){ ?>

                        <a href="<?php echo $row['link_youtubemusic'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/youtube-music.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                        <?php }?>
                    <?php if(!empty($row['link_applemusic'])){ ?>

                        <a href="<?php echo $row['link_applemusic'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/apple-music.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_deezer'])){ ?>

                        <a href="<?php echo $row['link_deezer'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/deezer.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_soundcloud'])){ ?>

                        <a href="<?php echo $row['link_soundcloud'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/soundcloud.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_amazonmusic'])){ ?>

                        <a href="<?php echo $row['link_amazonmusic'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/amazon-music.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-play"></i>
                                    Play
                                </div>
                            </div>
                        </a>
                    <?php }?>
                    <?php if(!empty($row['link_itunes'])){ ?>

                        <a href="<?php echo $row['link_itunes'] ?>" class="link-option">
                            <div class="link-option-row">
                                <div class="link-option-title">
                                    <span>
                                        <img class="link-option-img" src="../img/icons/itunes.png">
                                    </span>
                                </div>
                                <div class="link-option-action">
                                    <i class="fa fa-shopping-cart"></i>
                                    Buy
                                </div>
                            </div>
                        </a>
                    <?php }?>
                </div>
            </div>
    <?php
        }
    ?>
    <footer>
        <div class="footer">
            <h2><a href="../home" target="_blank">Sweet Sound Musiq</a></h2>
            <p class="copywrite-text">
                Copyright &copy; <script>document.write(new Date().getFullYear());</script><a href="https://www.sweetsound.co.za/family/" target="_blank"> Sweet Sound Family</a>
            </p>
        </div>
    </footer>
</body>
</html>
<?php
    // include 'inc/bottom-cache.php';
    }else{
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

    <!-- <base href="localhost/projects/sweet-sound-family/musiq/"> -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta property="og:url" content="https://www.sweetsound.co.za/musiq/<?php echo $row2['artist_smart_url'].'/'.$row2['musiq_smart_url'] ?>">
    <meta property="og:image:secure" content="https://www.sweetsound.co.za/musiq/images/musiq_images/<?php echo $row2['musiq_coverart'] ?>">
    <meta name="description" content="Pre-save <?php echo $row2['musiq_title'].' ['.$row2['musiq_title'].'] by '.$row2['artist_name']; if(!empty($row2['musiq_featured_artist'])){ echo ' featuring '.$row2['musiq_featured_artist'].''; }?>. And Be The First To Get It">
    <meta property="og:title" content="<?php echo $row2['artist_name'].' - '.$row2['musiq_title']; if(!empty($row2['musiq_featured_artist'])){ echo ' (feat. '.$row2['musiq_featured_artist'].')'; }?>">
    <meta property="og:type" content="website">
    <title>Pre-Save | <?php echo $row2['artist_name'].' - '.$row2['musiq_title']; if(!empty($row2['musiq_featured_artist'])){ echo ' (feat. '.$row2['musiq_featured_artist'].')'; }?></title>
    <!-- Favicon -->
    <link rel="icon" href="../img/core-img/favicon.png">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="../css/link-style.css">
    <link href="../css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
<body style="background-image: linear-gradient(rgba(22, 22, 22, 0.5), rgba(22, 22, 22, 0.5)), url('../images/musiq_images/<?php echo $row2['musiq_coverart'] ?>')">
  <!-- Preloader -->
  <div class="preloader d-flex align-items-center justify-content-center">
    <div class="lds-ellipsis">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
  </div>
  <?php
      if(!empty($musiq_id)){

          $query_musiq = "SELECT * FROM ((artists INNER JOIN  musiq ON artists.artist_id = musiq.artist_id) INNER JOIN musiq_links ON musiq.musiq_id = musiq_links.musiq_id) WHERE musiq.musiq_id = '$musiq_id'";
          $result_set = mysqli_query($conn, $query_musiq);
          $row=mysqli_fetch_assoc($result_set);
  ?>
        <div class="container">
            <div class="preview-img">
                <img src="../images/musiq_images/<?php echo $row['musiq_coverart'] ?>">
            </div>
            <div>
                <div class="details">
                    <h1><?php echo $row['musiq_title'] ?></h1>
                    <h2><?php echo $row2['artist_name'];if(!empty($row2['musiq_featured_artist'])){ echo ' (feat. '.$row2['musiq_featured_artist'].')'; }?></h2>
                    <h3 style="color:rgb(236, 195, 15); font-size:0.9em;">Pre-Request and You Get The Song/Album As Soon As It Drops.</h3>
                </div>
            </div>
            <div class="link-options">
                <div class="link-options-header">
                    <div class="link-options-triangle-back"></div>
                    <div class="link-options-triangle"></div>
                </div>
                <?php
                    $url = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
                    $text = '/?text=Hi,%20I%20would%20like%20to%20Pre-Request%20*'.$row['artist_name'].'*,%20-%20*'.$row['musiq_title'].'*%20('.$row['musiq_type'].')%20From%20 '.$url;
                ?>
                    <a href="https://wa.me/+27639507534<?php echo $text?>" class="link-option" target="_blank">
                        <div class="link-option-row">
                            <div class="link-option-title">
                                <span>
                                    <img class="link-option-img" src="../img/icons/whatsapp.png">
                                </span>
                            </div>
                            <div class="link-option-action">
                                <i class="fa fa-send"></i>
                                Pre-Request
                            </div>
                        </div>
                    </a>
                    <a href="<?php echo $row['pre_save_spotify'] ?>" class="link-option" target="_blank">
                        <div class="link-option-row">
                            <div class="link-option-title">
                                <span>
                                    <img class="link-option-img" src="../img/icons/spotify.png">
                                </span>
                            </div>
                            <div class="link-option-action">
                                <i class="fa fa-cloud-download"></i>
                                Pre-Save
                            </div>
                        </div>
                    </a>
                  </div>
              </div>
    <?php
        }
    ?>
      <footer>
          <div class="footer">
              <h2><a href="../home" target="_blank">Sweet Sound Musiq</a></h2>
              <p class="copywrite-text">
                  Copyright &copy; <script>document.write(new Date().getFullYear());</script><a href="https://www.sweetsound.co.za/family/" target="_blank"> Sweet Sound Family</a>
              </p>
          </div>
      </footer>
</body>
</html>
<?php
    }
    include 'inc/bottom-cache.php';
?>
