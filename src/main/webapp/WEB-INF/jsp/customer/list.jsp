<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <%@include file="/common/header.jsp"%>
</head>
<body style="height: 100%">

<header>

    <div class="btn-group" style="float: right">
        <button class="btn btn-primary" id="btnAdd">新增</button>
        <button class="btn btn-danger">删除</button>
    </div>

</header>

<section>

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

    <ul class="pager">
        <li class="previous"><a href="your/nice/url">«</a></li>
        <li><a href="your/nice/url">1</a></li>
        <li class="active"><a href="your/nice/url">2</a></li>
        <li><a href="your/nice/url">3</a></li>
        <li><a href="your/nice/url">4</a></li>
        <li><a href="your/nice/url">5</a></li>
        <li class="next"><a href="your/nice/url">»</a></li>
    </ul>

</footer>

<script>

    function add() {
        alert(11);
    }

    $('table.datatable').datatable({checkable: true});

    $('#btnAdd').bind("click", add);

</script>


</body>
</html>