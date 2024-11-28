<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style3 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="menu_nav">
    <div class="menu_nav_resize">
      <ul>
            <li class="active"><a href="DO_Main.jsp">Data Owner </a></li>
			<li><a href="DO_Login.jsp">Logout</a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>An Efficient Ciphertext Index Retrieval Scheme based on Edge Computing Framework</h1>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%=application.getAttribute("doname")%></span></h2>
            <p><img src="images/img2.jpg" width="600" height="308" /></p>
            <div class="article">
            <p align="justify"><span class="style3"><strong>With the rapid development of mobile applications, more and more traffic is generated at the network’s edge and forwarded between many users. The explosive growth of network traffic has imposed massive pressure on traditional network architectures. At the same time, users have increasing data security requirements because of frequent data breaches. Mobile edge storage is an emerging computing framework that ensures users enjoy a high quality of experience when they access cloud services and is gradually becoming the key technology to solve the above problems. In this paper, by exploiting searchable encryption and cooperative edge computing, we proposed an efficient ciphertext index retrieval scheme to tackle three issues simultaneously in a secure and efficient data search service scenario: (1) reducing data transportation latency to improve mobile user’s quality of experience; (2) mitigating data traffic pressure on the backbone network; (3) guaranteeing the security of the data when users search data in the edge network. Simulation results show that our scheme can save about 80% of backbone network traffic than the traditional cloud computing scheme. It can also reduce network latency by approximately 30% for users..</strong></span></p>
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
          </form>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2 class="star style1"><strong>Data Owner Menu</strong></h2>
          <ul class="sb_menu">
            <li class="style1"><a href="DO_Main.jsp">Home</a></li>
            <li class="style1"><a href="DO_Uplo.jsp">Upload</a></li>
            <li class="style1"><a href="DO_Update.jsp">Update</a></li>
            <li class="style1"><a href="DO_Delete.jsp">Delete</a></li>
            <li class="style1"><a href="DO_ViewFiles.jsp">View Files </a></li>
            <li class="style1"><a href="DO_SecPer.jsp">Secret Key Permission </a></li>
           
            <li><span class="style1"><a href="DO_Login.jsp">Logout</a></span></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
