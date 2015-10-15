<%-- 
    Document   : search
    Created on : 08-Oct-2015, 12:45:02
    Author     : steven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html class="background">
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="   Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <h1><a href="/Instagrim">InstaGrim!</a> </h1>
            <h2>Your world in Black and White</h2>
        </header>
        <nav>
            <ul>

               
                <li><a href="upload.jsp">Upload</a></li>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
                <li><a href="/Instagrim/Logout">Logout</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li><a href="/Instagrim/Profile/<%=lg.getUsername()%>">Your Profile</a></li>
                
                    <%}
                            }else{
                                %>
                 <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <%
                                        
                            
                    }%>
            </ul>
        </nav>
            <article class="article2">
                <form method="POST"  action="Search">
                <ul>          
                    <li>Search for: <input type="text" name="searchUsername"></li>
                </ul>
                <br/>
                <input class="button" type="submit" value="Search"> 
            </form>
                
            </article>
        <footer>
            <ul>
                <li>&COPY; Steven Turner</li>
            </ul>
        </footer>
    </body>
</html>
