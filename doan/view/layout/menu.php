<hr/ style="margin-bottom:5px;">
<section id="menu" class="mw-1000">
    <div class="menu-main">
        <ul>
            <li class="toggle-menu"><a href="#">Danh mục sản phẩm <img src="./img/total_ctg_img.png"></a></li>
            <li><a href="#">Sản phẩm bán chạy</a></li>
            <li><a href="#">Sản phẩm mới</a></li>
            <li><a href="#">Khuyến mãi hot</a></li>
        </ul>
        <div class="menu-sub">
            <ul>
                <?php foreach($dsmenu as $key =>$value){?>
                    <li>
                        <a><?=$dsmenu[$key]['tendm1']?></a>
                        <?php if(count($dsmenu[$key]['danhmuc2'])){?>
                            <?php foreach($dsmenu[$key]['danhmuc2'] as $keysub => $value){?>                                
                                <?php if(count($dsmenu[$key]['danhmuc3'][$keysub])){?>
                                    <ul>
                                        <?php foreach($dsmenu[$key]['danhmuc3'][$keysub] as $keysup => $value){?>
                                            <li><a><?=$dsmenu[$key]['danhmuc3'][$keysub][$keysup][0]?></a></li>
                                        <?php }?>
                                    </ul>
                                <?php }?>
                            <?php }?>                       
                        <?php }?>
                    </li>
                <?php }?>
            </ul>
        </div>
    </div>
    <div class="menu-form">
        <form class="form-search">
            <input type="text" name="">
            <button type="submit" class="search-button"></button>
        </form>
    </div>
</section>