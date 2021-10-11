<%-- 
    Document   : ClientGo
    Created on : Aug 30, 2021, 11:38:25 PM
    Author     : losto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Go</title>
    </head>
    <body>
    <center>
        <h2>ค้นหาเกม</h2>
        <form action="ShowGameFormREST">
            <input type='text' name='find'><br/><br>
            <input type='submit' value='get from REST'>
            <a href='index.jsp'><input type="button" value="หน้าแรก" ></a>
        </form>
    </center>
</body>
</html>