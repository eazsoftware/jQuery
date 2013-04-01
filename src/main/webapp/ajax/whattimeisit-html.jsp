<%@page import="org.json.JSONException"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    Thread.sleep(500);
    
    String strName = request.getParameter("name");

    response.setContentType("application/html");
%>
<html>
    <div id="saludation">Hi <%=strName%></div>
    <div id="time">It's <%=new java.util.Date()%></div>
</html>