<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style4 {color: #FF0000}
.style6 {
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
        <li ><a href="index.html">Home</a></li>
            <li class="active"><a href="DO_Login.jsp">Data Owner </a></li>
            <li><a href="EU_Login.jsp">Users</a></li>
			<li><a href="C_Login.jsp">Cloud</a></li>
        <li></li>
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
          <h2 class="style4">Data Owner Register </h2>
          <p><img src="images/Register.jpg" width="263" height="121" /></p>
          <form action="DO_RegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"> <span class="style6">Data Owner Name (required)<br />
            </span></label>
            <p class="style6">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style6">
            <label for="password">Password (required)<br />
            </label>
            </span>
            <p class="style6">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <p class="style6">
              <label for="email">Email Address (required)<br />
              </label>
              <input id="email" name="email" class="text" />
            </p>
            <span class="style6">
            <label for="mobile">Mobile Number (required)<br />
            </label>
            </span>
            <p class="style6">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style6">
            <label for="address">Your Address<br />
            </label>
            </span>
            <p class="style6">
              <textarea name="address" cols="50" id="address"></textarea>
            </p>
            <span class="style6">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style6">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style6">
            <label for="gender">Select Gender (required)<br />
            </label>
            </span>
            <p class="style6">
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </p>
            <span class="style6">
            <label for="pincode">Enter Pincode (required)<br />
            </label>
            </span>
            <p class="style6">
              <input id="pincode" name="pincode" class="text" />
            </p>
            <span class="style6">
            <label for="location">Enter Location (required)<br />
            </label>
            </span>
            <p class="style6">
              <input id="loc" name="location" class="text" />
            </p>
            <span class="style6">
            <label for="pic">Select Profile Picture (required)</label>
            </span>
            <em><strong>
            <label for="pic"></label>
            </strong></em><strong><label for="pic"></label>
            </strong>
            <label for="pic"><br />
            </label>
            <p>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
          <p align="right"><a href="DO_Login.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <ul class="sb_menu">
            <li><a href="C_Login.jsp">Cloud</a></li>
            <li><a href="EU_Login.jsp">Users</a></li>
            <li><a href="DO_Login.jsp">Data Owner </a></li>
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
