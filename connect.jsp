<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
	Connection connection = null;
 	try {
     

	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/An_Efficient_Ciphertext","root","root");
      	String sql="";

	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>