<%@page import="org.json.JSONException"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    Thread.sleep(500);
    
    JSONObject json = new JSONObject();
    
    String strName = request.getParameter("name");
    json.put("Saludation", "Hi " + strName);
    json.put("Time", "It's " + new java.util.Date());

    response.setContentType("text/plain");
    response.getWriter().write(json.toString());
%>