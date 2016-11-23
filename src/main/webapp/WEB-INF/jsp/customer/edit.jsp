<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <%@include file="/common/header.jsp" %>

</head>
<body>
<div class="container" style="margin-top: 20px">
    <form id="ajaxForm" action="editSubmit">
        <header>

        </header>

        <section style="">


            <div class="form-group">
                <label for="firstName">姓名</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="用户名">
            </div>
            <div class="form-group">
                <label for="age">年龄</label>
                <input type="text" class="form-control" id="age"  name="age" placeholder="只能输入数字">
            </div>
            <div class="form-group">
                <label for="birthday">出生日期</label>
                <input type="text" id="birthday" name="birthday" class="form-control form-date">
            </div>


        </section>

        <footer style="text-align: center">

            <div class="btn-group">
                <button type="submit" class="btn btn-primary">提交</button>
            </div>

        </footer>
    </form>

</div>
<script>


    // prepare the form when the DOM is ready
    $(document).ready(function () {
        var options = {

            success: showResponse  // post-submit callback


            //beforeSubmit: showRequest,  // pre-submit callback
            // other available options:
            //url:       url         // override for form's 'action' attribute
            //type:      type        // 'get' or 'post', override for form's 'method' attribute
            //dataType:  null        // 'xml', 'script', or 'json' (expected server response type)
            //clearForm: true        // clear all form fields after successful submit
            //resetForm: true        // reset the form after successful submit

            // $.ajax options can be used here too, for example:
            //timeout:   3000
        };
        $('#ajaxForm').submit(function () {
            $(this).ajaxSubmit(options);
            return false;
        });
    });

    // pre-submit callback
    function showRequest(formData, jqForm, options) {
        // formData is an array; here we use $.param to convert it to a string to display it
        // but the form plugin does this for you automatically when it submits the data
        var queryString = $.param(formData);

        // jqForm is a jQuery object encapsulating the form element.  To access the
        // DOM element for the form do this:
        // var formElement = jqForm[0];

        alert('About to submit: \n\n' + queryString);

        // here we could return false to prevent the form from being submitted;
        // returning anything other than false will allow the form submit to continue
        return true;
    }

    // post-submit callback
    function showResponse(responseText, result, xhr, $form) {
        //resultJson = JSON.parse(result);
        if(responseText.status=='OK'){



            new $.zui.Messager('提示消息：成功', {
                placement:'center',
                time:2000,
                type: 'success' // 定义颜色主题
            }).show();
        }
        else{
            new $.zui.Messager('提示消息：失败', {
                placement:'center',
                time:2000,
                type: 'danger' // 定义颜色主题
            }).show();
        }


    }


</script>

<script src="/jslib/my/datetimeinit.js"></script>


</body>
</html>