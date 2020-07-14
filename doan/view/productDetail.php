<section id="index-main" class="mw-1000" >
    <div class="title-main">
        <ul class="menu-title">
            <li><a href=""><img src="img/home.png" style="vertical-align: top;"></a></li>
            <li><a href="product"><button class="ctg">Sản phẩm</button></a></li>
            <?php
				echo (count($data['data']['list']))? '<li><a href="product/'.$data['data']['list']['tenkhongdau'].'"><button class="ctg">'.$data['data']['list']['ten'].'</button></a></li>' : "";
                echo (count($data['data']['cat'])) ? '<li><a href="product/'.$data['data']['list']['tenkhongdau'].'/'.$data['data']['cat']['tenkhongdau'].'"><button class="ctg">'.$data['data']['cat']['ten'].'</button></a></li>': "";
                echo (count($data['data']['item'])) ?'<li><a href="product/'.$data['data']['list']['tenkhongdau'].'/'.$data['data']['cat']['tenkhongdau'].'/'.$data['data']['item']['tenkhongdau'].'"><button class="ctg">'.$data['data']['item']['ten'].'</button></a></li>' : "";
            ?>
            <li><a></a></li>
        </ul>
    </div>
</section>
<hr style="margin:8px 0px 5px;">
<section id="index-main" class="mw-1000" >
    <div class="pdetail-title">
        <div class="pdetail-title-name">
            <p><?=$data['data']['product']['ten']?></p>
            <p><?=$data['data']['product']['masp']?></p>
        </div>
        <div class="pdetail-title-sub">
            <div class="pdetail-border">
                <p>Phản hồi trực tiếp</p>
                <p><img src="img/star_00n.png"></p>
            </div>
            <div class="pdetail-border">
                <p>Nổi bật</p>
                <p><img src="img/ico_heart.png"> 1</p>
            </div>
            <div class="pdetail-pd">               
                <p><img src="img/btn_sns.png"></p>
            </div>
        </div>
    </div>
    <div class="pdetail-main">
        <div class="pdetail-main-left"><img src="img/<?=$data['data']['product']['img']?>"></div>
        <div class="pdetail-main-right">
            <div class="pdetail-right-top">
                <span class="right-top-text">Giá bán:</span>
                <span class="right-top-price">
                    <?=number_format($data['data']['product']['gia'],0,'.',',')?> <span>đ</span>
                </span>
            </div>
            <div class="pdetail-right-bottom">
                <span class="right-top-sl">Số lượng:</span> 
                <input type="text" name="soluong" value="1" id="soluong">
                <div class="pdetail-right-num">
                    <img src="img/btn_amount_up.png"><br>
                    <img src="img/btn_amount_down.png">
                </div>
            </div>
            <div>
                <button type="button" class="btn btn-default" onclick="addCart(<?=$data['data']['product']['id']?>,getElementById('soluong').value,1)">Đặt hàng</button>
            </div>
        </div>
    </div>
    <div>
        <p>Thông tin sản phẩm</p>
        <div>
            <?=addslashes($data['data']['product']['noidung'])?>
        </div>
    </div>
</section>
