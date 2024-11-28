<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>

	<%
   		try {
	   	   Random rr = new Random();
		   String str="";
		
						str = 	String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf((char)(rr.nextInt(26)+'a'))
								+ String.valueOf(rr.nextInt(10))
								+ String.valueOf((char)(rr.nextInt(26)+'a'));

		  
		  application.setAttribute("enkey",str);
		  
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		response.sendRedirect("DO_Upload.jsp");  
	%>
