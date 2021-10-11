<%-- 
    Document   : SaveCommentTofirebase
    Created on : Aug 31, 2021, 11:00:12 AM
    Author     : losto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.Comment" %>
<% Comment comm = (Comment) session.getAttribute("comm");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SaveComment Page</title>

    </head>
    <body>
        <h1>Comment</h1>
        <label>ชื่อผู้ใช้: <%= comm.getComment_User()%></label><br>
        <label>เรื่อง: <%= comm.getComment_HeadText()%></label><br>
        <label>ความคิดเห็น: <%= comm.getComment_CommentText()%></label><br>
        <label>วันที่และเวลา: <%= comm.getComment_Date()%></label><br>
        <a href='index.jsp'><input type="button" value="หน้าแรก" ></a>
        <input type='button' value='Comment' onclick="save_comment();"/>
        


        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-analytics.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-database.js"></script>


        <script>
            // Your web app's Firebase configuration
            // For Firebase JS SDK v7.20.0 and later, measurementId is optional
            var firebaseConfig = {
                apiKey: "AIzaSyBAtt3gzjFS4UN4iOpooHZjEYNCJMpnwMs",
                authDomain: "webgameshop.firebaseapp.com",
                databaseURL: "https://webgameshop-default-rtdb.asia-southeast1.firebasedatabase.app",
                projectId: "webgameshop",
                storageBucket: "webgameshop.appspot.com",
                messagingSenderId: "460122455218",
                appId: "1:460122455218:web:3a69759464b3f5a8b59dab",
                measurementId: "G-GS077KJP5E"
            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
            firebase.analytics();
        </script>
        <script>
            var databaseRef = firebase.database().ref('comm/');

            function save_comment() {
            var uid = firebase.database().ref().child('comm').push().key;
                    var data = {
                    user_id: uid,
                            ชื่อผู้ใช้: '<%= comm.getComment_User()%>',
                            หัวข้อ: '<%= comm.getComment_HeadText()%>',
                            ความคิดเห็น:  '<%= comm.getComment_CommentText()%>',
                            วันที่และเวลา: '<%= comm.getComment_Date()%>',
                    }

            var updates = {};
                    updates['/Comment/' + uid] = data;
                    firebase.database().ref().update(updates);
                    alert('created successfully!');
                    reload_page();
            }
             </script>
            </body>
                    </html>
