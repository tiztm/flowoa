<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <%@include file="/common/header.jsp"%>
</head>
<body style="height: 100%">

<header>
    <div class="btn-group">

        <button type="button" class="btn btn-primary" data-icon="add" data-iframe="edit"
                data-backdrop="false" data-toggle="modal" data-size="" data-height="600">新增
        </button>

        <button class="btn btn-danger">删除</button>
    </div>
</header>

<section style="padding-top: 10px">

    <!-- div 数据表格 -->
    <div class="datatable" ></div>

</section>

<footer>

</footer>

<script>

    function add() {
        alert(11);
    }

    $('#btnAdd').bind("click", add);



    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }


    function cvtContent2Data(info, content) {
        //info.rows = content;
        info.rows = [];
        for(var i=0;i<content.length;i++){
            info.rows[i] = {};
            var inforow = info.rows[i];
            inforow.checked = false;
            inforow.data = [];

            var currow = content[i];

            for(var j=0;j<info.cols.length;j++){


                var rowcontent = currow[info.cols[j].name];

                if(rowcontent!=null&&info.cols[j].type == 'date')
                {
                    rowcontent = (new Date(rowcontent)).Format("yyyy-MM-dd hh:mm:ss") ;
                }

                inforow.data[j] = rowcontent==null?"":rowcontent;

            }

        }


    }

    $.ajax({
        url:"${pageContext.request.contextPath}/customer/listData.action",
        type:"POST",
        dataType:"json",
        success:function(json){

            //定义列
            var info = {
                cols: [


                    {width: 80, text: '姓名', name:'firstName',type: 'string', flex: true, colClass: ''},
                    {width: 80, text: '年龄', name:'age',type: 'number', flex: true, colClass: ''},
                    {width: 160, text: '出生日期', name:'birthday',type: 'date', flex: false, sort: 'down'},
                    {width: 80, text: '#',name:'id', type: 'string', ignore:true}
                ]
            };

            //数据转化
            cvtContent2Data(info,json.content);

            //生成数据表格
            $('.datatable').datatable({
                data: info,
                checkable: true,
                sortable: true,

            });
        },
        error:function(){
            alert('服务器异常');
        }
    });


</script>


</body>
</html>