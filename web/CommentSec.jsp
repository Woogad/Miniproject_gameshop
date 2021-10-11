<%-- 
    Document   : CommentSec
    Created on : Aug 31, 2021, 9:11:33 AM
    Author     : losto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment Page</title>
    </head>
    <body>
        <h1>การแสดงความคิดเห็น</h1>
        <form action="CommentServlet">
            <label>ชื่อผู้ใช้</label><br>
            <input type="text" name="CommentUser">
            <br><br>
            <label>หัวข้อ</label><br>
            <input type="text" name="HeadText">
            <br><br>
            <label>ความคิดเห็น</label><br>
            <textarea name="CommentText" rows="4" cols="50"></textarea>
            <br>
            <% 
            Calendar c = Calendar.getInstance();
                SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
                String currentDate = df.format(c.getTime());
                out.println("<br>เวลาที่แสดงความคิดเห็น : " + currentDate);
            %>
            <input type="text" value="<%=currentDate %>" name="TimeDate" style="display: none">
            <br><br>
                 <a href='index.jsp'><input type="button" value="หน้าแรก" ></a>
                 <label>- - - - -</label>
                 <input type="submit" value="ตกลง" >
        </form>
    </body>
</html>
