<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <%@ include  file="/common/header.jsp"%>
</head>
<body style="height: 100%">

<header>
    <div class="btn-group">
        <button class="btn btn-primary" id="btnAdd">新增</button>
        <button class="btn btn-danger">删除</button>
        <button class="btn">其他</button>
        <!-- 对话框触发按钮 -->
        <button class="btn" data-toggle="modal" data-target="#myModal" data-backdrop="false">启动对话框</button>
        <!-- 使用data-iframe属性 -->
        <button type="button" class="btn btn-primary" data-icon="heart" data-iframe="partial/iframe-modal.html"
                data-backdrop="false" data-toggle="modal">iframe对话框
        </button>

    </div>
</header>

<section style="padding-top: 10px">
    <!-- HTML 代码 -->
    <table class="table datatable">
        <thead>
        <tr>
            <th>#</th>
            <th>时间</th>

            <th>事件类型</th>
            <th>描述</th>
            <th>相关人物</th>
            <th>评分</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>1333</td>
            <td>1</td>
            <td>1333</td>
            <td>1</td>
            <td>1333</td>
        </tr>

        </tbody>
    </table>

</section>

<footer>

</footer>

<script>

    function add() {
        alert(11);
    }

    /* 初始化数据表格 */
    $('table.datatable').datatable({checkable: true, sortable: true});
    $('#btnAdd').bind("click", add);

</script>


<!-- 对话框HTML -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">关闭</span></button>
                <h4 class="modal-title">标题</h4>
            </div>
            <div class="modal-body">
                <p>主题内容...</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>