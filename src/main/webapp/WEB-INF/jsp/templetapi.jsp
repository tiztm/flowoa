<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <script src="/jslib/jquery.1.7.min.js"></script>
    <script src="/jslib/jquery.masonry.min.js"></script>
    <script src="/jslib/jquery.quicksearch.js"></script>

    <link href="/csslib/default.css" rel="stylesheet">
    <title>API速查</title>
</head>
<body class="cheat-detail">

<div id="more-list-container">
    <a href="javascript:void(0)">其他 &raquo;</a>
    <ul id="nav-more-list">
        <li><a id="">全部 &raquo;</a></li>
    </ul>
</div>


<div id="navbar">
    <a id="logo" href="/">API速查</a>

    <ul id="navlist" class="nav">
        <c:forEach var="apis" items="${apiTypeList}" >
            <li><a href="/${apis.name}" >${apis.name}</a></li>
        </c:forEach>
        <li><a href="#more" id="nav-more">其他 &raquo;</a></li>
    </ul>
</div>

<div style="position:fixed;right:105px;top:10px;z-index:200;">
    <input type="" id="searchApi" placeholder="搜索"/>
</div>




<div class="content">

    <c:forEach var="apis" items="${apiTypeList}" >

        <c:if test="${apis.name == nowType}">


            <c:forEach var="ah" items="${apis.apiHelpsList}" >

            <div class="board ">
                <h2 class="board-title">${ah.name}</h2>


                <c:forEach var="ah2" items="${ah.childHelpsList}" >

                <div class="board-card">
                    <h3 class="board-card-title">${ah2.name}</h3>
                    <ul>
                        <c:forEach var="ah3" items="${ah2.childHelpsList}" >

                            <c:if test="${not empty ah3.aHref}">


                                <c:if test="${fn:startsWith(ah3.aHref, '/')}">
                                    <li><a href="http://overapi.com${ah3.aHref}" title="${ah3.aTitle}">${ah3.name}</a></li>
                                </c:if>
                                <c:if test="${not fn:startsWith(ah3.aHref, '/')}">
                                    <li><a href="${ah3.aHref}" title="${ah3.aTitle}">${ah3.name}</a></li>
                                </c:if>




                            </c:if>

                            <c:if test="${not empty ah3.atip}">
                                <li class="tip">${ah3.atip}</li>
                            </c:if>

                            <c:if test="${empty ah3.aHref && empty ah3.atip}">
                                <li>${ah3.name}</li>
                            </c:if>


                        </c:forEach>
                    </ul>
                </div>

                </c:forEach>


            </div>

            </c:forEach>

        </c:if>


    </c:forEach>

</div>



</body>


<script src="/jslib/main.js"></script>


<div style="display: none">
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260874691'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1260874691' type='text/javascript'%3E%3C/script%3E"));</script>
</div>
</html>