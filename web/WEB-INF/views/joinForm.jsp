<%--
  Created by IntelliJ IDEA.
  User: hyunungLim
  Date: 2019-01-28
  Time: 오후 6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>


<form action="joinus" method="POST">

<table border="1">
    <tr>
        <th colspan="2">회원가입</th>
    </tr>
    <tr>
        <td>아이디</td>
        <td><input type="text" id="userid" name="userid"></td>
    </tr>

    <tr>
        <td>패스워드</td>
        <td><input type="text" id="userpwd" name="userpwd"></td>
    </tr>

    <tr>
        <td>패스워드 확인</td>
        <td><input type="text" id="" name=""></td>
    </tr>


    <tr>
        <td>이름</td>
        <td><input type="text" id="username" name="username"></td>
    </tr>

    <tr>
        <td>휴대폰</td>
        <td><input type="text" id="phone" name="phone"></td>
    </tr>
</table>

    <input type="submit" value="등록"/>
</form>
efefef
</body>
</html>
