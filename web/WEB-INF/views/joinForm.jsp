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


    <script>
        function pwdchk() {

            var userid = document.getElementById("userid");
            var userpwd = document.getElementById("userpwd");
            var userpwdchk = document.getElementById("userpwdchk");
            var username = document.getElementById("username");
            var phone = document.getElementById("phone");

            var pwtemp1 = userpwd.value.trim();
            var pwtemp2 = userpwdchk.value.trim();

            if (pwtemp1 != pwtemp2) {
                alert("패스워드가 서로 같지 앉음");
                userpwd.focus();
                userpwd.select();
                return false;
            }
            return true;
        }

        function idCheck(){
            window.open("idcheck", "checkWindow", "top=200,left=300,height=300,width=400");

        }


    </script>

</head>
<body>


<form action="joinus" method="POST" onsubmit="return pwdchk();">

    <table border="1">
        <tr>
            <th colspan="3">회원가입</th>
        </tr>
        <tr>
            <td>아이디</td>
            <td>
                <input type="text" id="userid" name="userid" required readonly="readonly">
            </td>
            <td>
                <input type="button" onclick="idCheck();" value="중복확인"/>
            </td>

        </tr>

        <tr>
            <td>패스워드</td>
            <td colspan="2"><input type="text" id="userpwd" name="userpwd" required></td>
        </tr>

        <tr>
            <td>패스워드 확인</td>
            <td colspan="2"><input type="text" id="userpwdchk" name="userpwdchk" required></td>
        </tr>


        <tr>
            <td>이름</td>
            <td colspan="2"><input type="text" id="username" name="username" required></td>
        </tr>

        <tr>
            <td>휴대폰</td>
            <td colspan="2"><input type="text" id="phone" name="phone" required></td>
        </tr>
    </table>

    <input type="submit" value="등록"/>
</form>

asdasf
</body>
</html>
