<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js">

<jsp:include page="/common/header.jsp"/>

<div class=" admin-content">




    <div class="admin-biaogelist">
        <div class="listbiaoti am-cf">
            <ul class="am-icon-users"> 顾客管理</ul>
            <dl>
                <button type="button" onclick="javascript:openWin('/cus','新增顾客');" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 手动添加顾客</button>
            </dl>
            <!--这里打开的是新页面-->
        </div>


        <form class="am-form am-g">
            <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">

                <thead>

                <tr class="am-success">
                    <th class="table-check"><input type="checkbox"/></th>

                    <th class="table-id">ID</th>
                    <th class="table-title">顾客名称</th>
                    <th class="table-type">顾客等级</th>
                    <th class="table-author am-hide-sm-only">顾客积分</th>
                    <th class="table-author am-hide-sm-only">注册日期</th>
                    <th class="table-date am-hide-sm-only">最近消费</th>
                    <th width="130px" class="table-set">操作</th>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <td><input type="checkbox"/></td>

                    <td>14</td>
                    <td><a href="#">Business management</a></td>
                    <td>3件 （消费455个积分）</td>
                    <td class="am-hide-sm-only">访问</td>
                    <td class="am-hide-sm-only">访问</td>
                    <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                    <td>


                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">

                                <button type="button" onclick="javascript:openWin('323232323','222');"  class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除订单">
                                    <span  class="am-icon-trash-o"></span></button>
                            </div>
                        </div>


                    </td>
                </tr>


                </tbody>
            </table>

            <div class="am-btn-group am-btn-group-xs">
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 删除</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 上架</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 下架</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 移动</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 移动</button>
                <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
            </div>

            <ul class="am-pagination am-fr">
                <li class="am-disabled"><a href="#">«</a></li>
                <li class="am-active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
            </ul>


            <hr/>

        </form>


    </div>

</div>


<jsp:include page="/common/foot.jsp"/>

