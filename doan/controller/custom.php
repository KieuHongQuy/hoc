<?php
    include './model/post.php';
    $post = new post($config);
    $logo = $post-> getPost('logo');
    $bocongthuong = $post-> getPost('bo-cong-thuong');
    $thongfooter = $post-> getPost('thong-footer');
    $giohang = $post->getPost('giohang');
    $icon = $post->getPost('icon');
    $sukien = $post->getPost('su-kien');
    $donhang = $post->getPost('don-hang');
    $sanpham = $post->getPost('san-pham-yeu-thich');
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