<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>index</title>
  </head>
  <script type="text/javascript">
    // 当用户账号输入框失去焦点是调用该方法
    function checkUser(obj) {
        // 发送Ajax请求并处理
        var request = new XMLHttpRequest();
        request.open("POST","index.jsp",true);
        request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        var data = "username="+document.getElementById("userName").valueOf()
            +"password="+document.getElementById("password").valueOf();
        request.send(data);
        request.onreadystatechange =function () {
            if(request.readyState===4){
                if(request.status === 200){
                    document.getElementById("result").innerHTML = "用户名错误";
                }else{
                    alert("发生错误:"+request.status);
                }
            }
        }
    }
  </script>
  <body>
    <div id="form-div">
      <form id="form1" action="index.jsp" method="post">
         <%--当用户账号输入框失去焦点--%>
		        用户名:<input type="text" id="userName" name="userName" onblur="checkUser(this)"><p id="result"></p>
		        密  码:<input type="password" id="password" name="password"><br>
        <input type="submit" value="登录">
        <input type="submit" value="重置">
      </form>
    </div>
  </body>
</html>
