<%@page import="org.json.JSONException"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    Thread.sleep(500);
    
    response.setContentType("text/xml");
    response.setCharacterEncoding("UTF-8");
        
    String strName = request.getParameter("name");
%>

<clock>
   <salutation>Hi <%=strName%></salutation>
   <time>It's <%=new java.util.Date()%></time>
</clock>