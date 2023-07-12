<?php
    include 'inc/top-cache.php';
    include 'inc/config.php';

    if(!empty($_GET['id'])){

        $playlist_smart_url = $_GET['id'];

        $query_playlist_id = "SELECT playlist_id, playlist_smart_url FROM playlists WHERE playlist_smart_url = '$playlist_smart_url'";
        $result_set = mysqli_query($conn, $query_playlist_id);
        $row = mysqli_fetch_assoc($result_set);

        if(!empty($row)){

            $playlist_id = $row['playlist_id'];

            $update_playlist = "UPDATE playlists SET playlist_page_views = playlist_page_views + 1 WHERE playlist_id = '$playlist_id'";
            mysqli_query($conn, $update_playlist);
            echo mysqli_error($conn);
        }

    }else{
        echo '<meta http-equiv="refresh" content="0; url= playlists">';
    }
    $query_playlist = "SELECT * FROM playlists WHERE playlist_id = '$playlist_id'";
    $result_set = mysqli_query($conn, $query_playlist);
    $row2 = mysqli_fetch_assoc($result_set);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-162897830-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}s
      gtag('js', new Date());
      gtag('config', 'UA-162897830-1');
    </script>

    <!-- <base href="https://www.sweetsound.co.za/musiq/"> -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
    <meta property="og:url" content="https://www.sweetsound.co.za/musiq/playlists<?php echo $row2['playlist_smart_url']?>">
  	<meta property="og:image:secure" content="https://www.sweetsound.co.za/musiq/images/playlists_images/<?php echo $row2['playlist_coverart'] ?>">
  	<meta name="description" content="Check Out <?php echo $row2['playlist_title'] ?> | Playlist">
  	<meta property="og:title" content="<?php echo $row2['playlist_title']?> | Playlist">
  	<meta property="og:type" content="website">
  	<title><?php echo $row2['playlist_title']?> | Playlist</title>
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.png">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="css/artist-link.css">
    <link href="css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body style="background-image: linear-gradient(rgba(22, 22, 22, 0.5), rgba(22, 22, 22, 0.5)), url('images/playlists_images/<?php echo $row2['playlist_coverart'] ?>')">
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
        if(!empty($playlist_id)){

            $query_playlist = "SELECT * FROM playlists WHERE playlist_id = '$playlist_id'";
            $result_set = mysqli_query($conn, $query_playlist);
            $rows=mysqli_fetch_assoc($result_set);
    ?>
            <div class="container">
                <div class="preview-img">
                    <img src="images/playlists_images/<?php echo $rows['playlist_coverart'] ?>">
                </div>
                <div>
                    <div class="details">
                        <h1><?php echo $rows['playlist_title'] ?></h1>
                        <h2><?php echo $rows['playlist_about'] ?></h2>
                    </div>
                    <div class="sml-links" style="text-align:center;">
                        <a href="<?php echo $rows['playlist_spotify'] ?>" class="sml-btn" id="whatsapp"><i class="fa fa-spotify"></i> </a>
                        <a href="<?php echo $rows['playlist_youtube'] ?>" class="sml-btn" id="youtube"><i class="fa fa-youtube-play"></i> </a>
                        <button class="sml-btn" id="twitter" style="background:transparent; border:none; cursor:pointer;"><i class="fa fa-share"></i> </button>
                    </div>
                </div>
                <div class="link-options">
                    <div class="link-options-header">
                        <div class="link-options-triangle-back"></div>
                        <div class="link-options-triangle"></div>
                    </div>
                    <?php
                        $musiq_ids = str_replace(', ', '', $rows['playlist_musiq_ids']);
                        $array = str_split($musiq_ids);
                        $count = 1;
                        foreach ($array as $musiq_id) {

                            $sel_songs = "SELECT * FROM musiq, artists WHERE musiq.artist_id = artists.artist_id AND musiq.musiq_id = '$musiq_id'";
                            $query_songs = mysqli_query($conn, $sel_songs);
                            while($row3 = mysqli_fetch_array($query_songs)){
                    ?>
                            <a href="<?php echo $row3['artist_smart_url'].'/'.$row3['musiq_smart_url'] ?>" class="link-option">
                                <div class="link-option-row">
                                    <div class="link-option-title">
                                        <span>
                                            <img id="artist-img" src="images/musiq_images/<?php echo $row3['musiq_coverart'] ?>">
                                        </span>
                                    </div>
                                    <div id="link-option-action">
                                        <?php echo $row3['musiq_title'] ?>
                                      <small></small>
                                    </div>
                                </div>
                            </a>
                    <?php
                            }
                        }
                    ?>
                </div>
            </div>
    <?php
        }
    ?>
      <footer>
          <div class="footer">
              <h2><a href="home" target="_blank">Sweet Sound Musiq</a></h2>
              <p class="copywrite-text">
                  Copyright &copy; <script>document.write(new Date().getFullYear());</script><a href="https://www.sweetsound.co.za/family/" target="_blank"> Sweet Sound Family</a>
              </p>
          </div>
      </footer>
</body>
</html>
<?php
    include 'inc/bottom-cache.php';
?>
