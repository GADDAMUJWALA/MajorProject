<%@ page import="java.sql.*,java.util.Random" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@ include file="connect.jsp" %>

	<%
  		String owner = request.getParameter("t1");
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
								
String keys = "ef50a0ef2c3e3a5f", k="mf77f0el2e4x9b2b", t="ne16a4ie2w0f5i6j", m="md77s1oq5l2s9u9t";

		String txt="Hi there";						
		byte[] keyValue = m.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String dt1 = new String(Base64.encode(txt.getBytes()));
		
					byte[] keyValue1 = t.getBytes();
					Key key1 = new SecretKeySpec(keyValue1, "AES");
					Cipher c1 = Cipher.getInstance("AES");
					c1.init(Cipher.DECRYPT_MODE, key1);
					String s3 = new String(Base64.decode(dt1.getBytes()));

		  
out.print(dt1);	%><br /><%

out.print(s3);		  
	  
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
	%>
