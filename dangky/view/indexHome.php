<?php 
    $dsmain = $data['datamain'] ;
    $dspd = [];
    foreach($dsmain as $key => $value){
        if(!isset($dspd[$dsmain[$key]['id_list']])){
            $dspd[$dsmain[$key]['id_list']]['danhmuc']['ten'] = $dsmain[$key]['tenlist'];
            $dspd[$dsmain[$key]['id_list']]['danhmuc']['img'] = $dsmain[$key]['imglist'];
        }
        if(!isset($dspd[$dsmain[$key]['id_list']]['danhcon'][$dsmain[$key]['id']]) && count($dspd[$dsmain[$key]['id_list']]['danhcon']) < 6){
            $dspd[$dsmain[$key]['id_list']]['danhcon'][$dsmain[$key]['id']]['ten'] = $dsmain[$key]['ten'];
            $dspd[$dsmain[$key]['id_list']]['danhcon'][$dsmain[$key]['id']]['img'] = $dsmain[$key]['img'];
            $dspd[$dsmain[$key]['id_list']]['danhcon'][$dsmain[$key]['id']]['gia'] = $dsmain[$key]['gia'];
        }
    }
?>
<section id="index-main" class="mw-1000" >
    <div class="main-top">
        <div class="maint-title">
            <p>Sản phẩm bán chạy</p>
            <p><span>Xem thêm</span></p>
        </div>
        <div class="slickProductNB">
            <?php foreach($data['data'] as $key => $value){?>
                <div class="slick-width">
                    <img src="./img/<?=$data['data'][$key]['img']?>">
                    <p class="slick-p">
                        <?=$data['data'][$key]['ten']?>
                    </p>
                    <p class="slick-psub">
                        <?=number_format($data['data'][$key]['gia'],0,',', '.')?> đ
                    </p>
                </div>
            <?php }?>
        </div>
    </div>
    <div class="title-dm">
        <p>Danh mục sản phẩm</p>
        <p>Bạn có thể xem được sản phẩm đa dang của LOCK</p>
    </div>
    <div class="main-main">
        <?php foreach($dspd as $key => $value){?>
            <div class="product-title"> 
                <span><a href=""><?=$dspd[$key]['danhmuc']['ten']?></a></span>
                <span><a href="">Xem thêm</a></span>
            </div>
            <div class="product-main">
                <div class="product-img">
                    <img src="./img/<?=$dspd[$key]['danhmuc']['img']?>">
                </div>
                <div class="product-sp">
                <?php if(count($dspd[$key]['danhcon']) > 0){?>
                    <?php foreach($dspd[$key]['danhcon'] as $sub => $value){?>
                        <div class="product">
                            <img src="./img/<?=$dspd[$key]['danhcon'][$sub]['img']?>">
                            <p class="product-name"><?=$dspd[$key]['danhcon'][$sub]['ten']?></p>
                            <p><?=number_format($dspd[$key]['danhcon'][$sub]['gia'],0,'.',',')?> đ</p>
                        </div>
                    <?php }?>
                <?php }?>
                </div>
            </div>
        <?php }?>
    </div>
    <hr/ style="margin-top:25px;border: 2px solid #000;">
    <div class="main-bottom">
        <div class="mainb-main">
            <div class="mainb-left"><?=$data['thongtin']['noidung']?></div>
            <div><img src="./<?=$data['thongtin']['img']?>"></div>
        </div>
        <div class="mainb-main">
            <div><img src="./<?=$data['mxh']['img']?>"></div>
            <div><?=$data['mxh']['ten']?></div>
            <div><img src="./img/mainSns.png"></div>
        </div>
        <div class="mainb-main">
            <div><img src="./<?=$data['bgcart']['img']?>"></div>
            <div><img src="./<?=$data['bgtintuc']['img']?>"></div>
            <div>
                <div>
                    <span>Notice</span>
                    <span>Xem thêm</span>
                </div>
                <div>
                    
                </div>
            </div>
        </div>
    </div>
</section>