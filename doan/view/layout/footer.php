<hr/>
<footer id="footer">
    <div class="footer-top mw-1000">
        <ul>
            <li><a>Giới thiệu công ty</a></li>
            <li><a>Điều khoản</a></li>
            <li><a>Chính sách xử lý thông tin</a></li>
            <li><a>Từ chối thư rác</a></li>
            <li><a>Chăm sóc khách hàng</a></li>
            <li><a class="footer-border">Sơ đồ</a></li>
        </ul>
    </div>
    <hr/>
    <div class="footer-bottom mw-1000">
        <div><img src="./<?=$thongfooter['img']?>"></div>
        <div class="footer-content"><?php 
            $array = explode("\r\n", $thongfooter['mota']);
			echo implode("<br/>",$array);?></div>
        <div><img src="./<?=$bocongthuong['img']?>"></div>
    </div>
</footer>