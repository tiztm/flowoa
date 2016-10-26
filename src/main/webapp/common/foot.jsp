<%--
  Created by IntelliJ IDEA.
  User: nilszhang
  Date: 2016/10/25
  Time: 16:30
  通用页脚
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
</div>


<div id="subwindow" class="am-modal am-modal-no-btn" tabindex="-1">
    <div class="am-modal-dialog">
        <div class="am-modal-hd"><span id="winTitle">Modal 标题6</span>
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd">
            <iframe id="winFrame" src="index.jsp"></iframe>
        </div>
    </div>
</div>

<!--[if lt IE 9]>
<script src="assets/js/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->


</body>
</html>