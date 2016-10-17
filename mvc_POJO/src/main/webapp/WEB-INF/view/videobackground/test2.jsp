<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Vidbg.js Demo</title>
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
  <link href="/SRC2/videoback/demo/css/fullscreenDemo.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>

<body>

  <div class="block-container">
    <div class="block">
      <h1>Video Background</h1>
      <h3>Fullscreen applied to <body> </h3>
    </div>
  </div>

  <script type="text/javascript">
    jQuery(function($){
          $('body').vidbg({
              'mp4': '/SRC2/videoback/demo/media/mp4_video.mp4',
              'webm': '/SRC2/videoback/demo/media/webm_video.webm',
              'poster': '/SRC2/videoback/demo/media/fallback.jpg',
          }, {
            // Options
            muted: true,
            loop: true,
  					overlay: true,
          });
      });
  </script>

  <script src="/SRC2/videoback/dist/vidbg.js"></script>

</body>
</html>
