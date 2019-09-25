<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 2019/8/29
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>图书管理系统V1.0</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h1 class="text-center">
                    图书管理系统V1.0
                </h1>
                <p class="text-center lead text-info">
                    作者：Chan
                </p>

                <div class="row clearfix">
                    <div class="col-md-4 column">
                    </div>
                    <div class="col-md-4 column">
                        <a href="<%=appPath%>/book/list"><button type="button" class="btn btn-lg btn-primary btn-block">点击进入</button></a>
                    </div>
                    <div class="col-md-4 column">
                    </div>
                </div>

                <br><br><br>
                <h1>日志：</h1>
                <table class="table">
                    <tr>
                        <th>日期</th>
                        <th>版本</th>
                        <th>功能</th>
                    </tr>
                    <tr>
                        <td>2019-08-27</td>
                        <td>V1.0</td>
                        <td>完成SSM框架整合，完成详情、删除功能</td>
                    </tr>
                </table>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
</html>
