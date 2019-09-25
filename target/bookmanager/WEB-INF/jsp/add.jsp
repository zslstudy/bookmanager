<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 2019/8/30
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>图书管理系统V1.0</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    图书管理系统V1.0 <small>整合ssm框架</small>
                </h1>
            </div>
            <div class="tabbable" id="tabs-981464">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="<%=appPath%>/book/list" data-toggle="tab">首页</a>
                    </li>
                    <li>
                        <a href="<%=appPath%>/book/add" data-toggle="tab">添加图书</a>
                    </li>
                </ul>
            </div>

            <div class="page-header">
                <h1>
                    图书列表 <small>当前库存</small>
                </h1>
            </div>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>书名</th>
                    <th>库存</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.name}</td>
                        <td>${book.number}</td>
                        <td>
                            <a href="<%=appPath%>/book/detail/${book.bookId}">详情</a> |
                            <a href="<%=appPath%>/book/del/${book.bookId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
</html>
