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
        var data = "username="+document.getElementById("username").value
        +"&password="+document.getElementById("password").value;
        request.open("GET","LoginServlet?"+data);
        // request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        request.send();
        request.onreadystatechange =function () {
            if(request.readyState===4 && request.status === 200){
                if(request.responseText === "true"){
                    document.getElementById("result").innerHTML = "用户名可用";
                }else{
                	document.getElementById("result").innerHTML = "用户名不可用";
                }
            }
        }
    }
  </script>
  <body>
    <div id="form-div">
      <form id="form1">
         <%--当用户账号输入框失去焦点--%>
		        用户名:<input type="text" id="username" name="username" onblur="checkUser(this)"><p id="result"></p>
		        密  码:<input type="password" id="password" name="password"><br>
        <input type="submit" value="登录">
        <input type="reset" value="重置">
      </form>
    </div>
  </body>
</html>
