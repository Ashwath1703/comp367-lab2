<%@ page import="java.time.LocalTime" %>
<%
    int hour = LocalTime.now().getHour();
    String msg;
    if (hour < 12) {
        msg = "Good morning, Ashwath, Welcome to COMP367";
    } else {
        msg = "Good afternoon, Ashwath, Welcome to COMP367";
    }
%>
<html>
<body>
<h2><%= msg %></h2>
</body>
</html>
