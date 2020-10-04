<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <%@include file="all js_css.jsp" %>
</head>
<body>

 <div class="container">
   
      <%@include file="navbar.jsp" %>
      <h1>Edit your notes</h1>
      <br>
      <%
           int noteId=Integer.parseInt(request.getParameter("note_id").trim());
          
           Session s=FactoryProvider.getFactory().openSession();
		   
		   Note note=(Note)s.get(Note.class, noteId);
            
      %>
      
       <form action="UpdateServlet" method="post">
 
      <input value="<%=note.getId() %>" name="noteId" type="hidden"/>
 
  <div class="form-group">
    <label for="title">Notes title</label>
    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" name="title" value=<%=note.getTitle() %>/>
  </div>
  <br>
  <br>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
   <textarea id="content" placeholder="Enter your content here" class="form-control" style="height:300px" name="content"> <%=note.getContent() %></textarea> 
  </div>
  
  <div class="container text-centre">
  <button type="submit" class="btn btn-success">Save your note</button>
  </div>
  
  
  
</form>
      
   </div>

</body>
</html>