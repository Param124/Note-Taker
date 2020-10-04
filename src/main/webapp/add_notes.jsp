<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all js_css.jsp" %>
</head>
<body>

 <div class="container">
   
      <%@include file="navbar.jsp" %>
      <br>
      <h1> please fill your note detail</h1>
      <br>
      
      <!-- this is add form -->
      
      <form action="SaveNoteServlets" method="post">
  <div class="form-group">
    <label for="title">Notes title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" name="title">
  </div>
  <br>
  <br>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
   <textarea id="content" placeholder="Enter your content here" class="form-control" style="height:300px" name="content"> </textarea> 
  </div>
  
  <div class="container text-centre">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
  
  
  
</form>
      
   </div>


</body>
</html>