<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/jssor.css">
    <link rel="stylesheet" href="./css/style.css">
    <link type="text/css" rel="stylesheet" href="./plugins/slick/slick.css" />
    <link type="text/css" rel="stylesheet" href="./plugins/slick/slick-theme.css" />
    <script src="./js/jquery-3.4.1.min.js"></script>
    <script src="./js/js.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./plugins/slick/slick.min.js"></script>
</head>
<body>
    <div id="wrap">
    <?php include_once "./view/layout/header.php"?>
    <?php include_once "./view/layout/menu.php"?>
	<?php if(isset($_GET['controller']) && $_GET['controller']!="indexHome"){
        include_once "./view/".$controller.".php";
	}else{
        include_once "./view/layout/slider.php";
		include_once "./view/".$controller.".php";
    }
    
    ?>
    </div>
    <script src="js/jssor.slider-25.2.0.min.js" type="text/javascript"></script>
    <script src="js/jssor_1_slider_init.js" type="text/javascript"></script>
    <script type="text/javascript">jssor_1_slider_init();</script>
</body>
</html>