	
<!DOCTYPE html>
<html>
<head>
  <style>
  h3 { margin: 0; }
  div,span,p {
    width: 80px;
    height: 40px;
    float:left;
    padding: 10px;
    margin: 10px;
    background-color: #EEEEEE;
  }
  </style>
  <jsp:include page="../jQueryScript.jsp" /> 
</head>
<body>
  <div>DIV</div>
 
  <span>SPAN</span>
  <p>P <button>Button</button></p>
<script>var elementCount = $("*").css("border","3px solid red").length;
$("body").prepend("<h3>" + elementCount + " elements found</h3>");</script>
 
</body>
</html>
