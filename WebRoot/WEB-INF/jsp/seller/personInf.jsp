<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商家后台</title>
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    table {
        margin: 50px auto;
        border-collapse: collapse;
        border: 2px solid green;
    }
    table.tb1 td{
        padding: 10px;
        border: 2px solid green;

    }
    .td1{
        width: 125px;
        text-align: center;
    }
    .td2{
        width: 400px;
    }


</style>
<body>
<div class="panel admin-panel">
<form action="${ctx}/seller/exUpdatePersonInf" method="post" id="myForm">
<table class="table table-hover text-center tb1">
    <tr>
        <td class="td1">
            <label for="sellerName">商&nbsp&nbsp家&nbsp&nbsp名:</label>
        </td>
        <td class="td2">
            <input id="sellerName" type="text" name="sellerName" value="${seller.sellerName}">
        </td>
    </tr>
    <tr>
        <td class="td1">
            <label for="realName">真&nbsp&nbsp实&nbsp&nbsp姓&nbsp&nbsp名：</label>
        </td>
        <td>
            <input id="realName" name="realName" value="${seller.realName}" type="text"/>
        </td>
    </tr>
    <tr>
        <td class="td1">
            <label for="phone">手&nbsp&nbsp机&nbsp&nbsp号&nbsp&nbsp码：</label>
        </td>
        <td>
            <input id="phone" name="phone" value="${seller.phone}" type="text"/>
        </td>
    </tr>
    <tr>
        <td class="td1">
            <label for="IdNum">身&nbsp&nbsp份&nbsp&nbsp证&nbsp&nbsp号：</label>
        </td>
        <td>
            <input id="IdNum" name="IdNum" value="${seller.idNum}" type="text"/>
        </td>
    </tr>
    <tr>
        <td class="td1">
            <label >性&nbsp&nbsp别：</label>
        </td>
        <c:if test="${seller.sex =='男'}">
            <td>
                <input type="radio" name="sex" value="男" checked/>男
                <input type="radio" name="sex" value="女"/>女
            </td>
        </c:if>
        <c:if test="${seller.sex =='女'}">
            <td>
                <input type="radio" name="sex" value="男"/>男
                <input type="radio" name="sex" value="女" checked/>女
            </td>
        </c:if>

    </tr>
    <tr>
        <td class="td1">
            <label for="address" >地&nbsp&nbsp址：</label>
        </td>
        <td>
           <input id="address" name="address" value="${seller.address}" type="text"/>
        </td>
    </tr>
    <tr>
        <td class="td1">
            <label for="email" >邮&nbsp&nbsp箱：</label>
        </td>
        <td>
            <input id="email" name="email" value="${seller.email}" type="text"/>
        </td>
    </tr>
    <tr>
        <td>

        </td>
        <td>
            <button type="submit" class="btn btn-success" onclick="saveForm()">修改</button>
            &nbsp&nbsp|&nbsp&nbsp
            <button type="reset" class="btn btn-info" onclick="resetForm()">重置</button>
        </td>


    </tr>

</table>

</form>
    <div style="text-align: center" id="return">
        <button id="reBack" class="btn btn-info">返回</button>
    </div>
</div>
<script type="text/javascript">
    function saveForm(){
            alert("修改成功!");
        }
    function resetForm() {
            alert("已重置！");
    }
    let btn = document.getElementById("reBack");
    btn.addEventListener("click",function () {
        window.history.back();
    });
    window.onload=function () {
        let div_return = document.getElementById("return");
        if(${type==0}){
            div_return.style.visibility="hidden";
        }
    };

</script>

</body>

</html>