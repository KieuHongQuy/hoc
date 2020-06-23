<?php
    include './model/post.php';
    $post = new post($config);
    $logo = $post->getLogo();
    $giohang = $post->getGiohang();
    $icon = $post->getIcon();
    $sukien = $post->getSukien();
    $donhang = $post->getDonhang();
    $sanpham = $post->getSanpham();
    $slider = $post->getSlider();
    $ds = $post->getMenu();
    $dsmenu = [];
    foreach($ds as $key=>$value){
        if(!isset($dsmenu[$ds[$key]['id_list']])){
            $dsmenu[$ds[$key]['id_list']]["tendm1"] =  $ds[$key]['tenlist'];
        }
        if(!isset($dsmenu[$ds[$key]['id_list']]["danhmuc2"][$ds[$key]['id_cat']])){
            $dsmenu[$ds[$key]['id_list']]["danhmuc2"][$ds[$key]['id_cat']] =  $ds[$key]['tencat'];
            
        }
        if(!isset($dsmenu[$ds[$key]['id_list']]["danhmuc3"][$ds[$key]['id_cat']][$ds[$key]['id_item']])){
            $dsmenu[$ds[$key]['id_list']]["danhmuc3"][$ds[$key]['id_cat']][$ds[$key]['id_item']] =  [$ds[$key]['tenitem']];
        }
    }
?>