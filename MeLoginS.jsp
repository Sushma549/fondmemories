<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">

    <title>RenovatorsAP</title>
    <link rel="icon" type="image/png" href="resources/icon.png"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="resources/mscss.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

  <script type="text/javascript" src="resources/msjs.js"></script>
  <style>
  body{
     background-image: url("resources/bg.jpg");
  }

  </style>
</head>

<body>
      <script>
         setTimeout(function(){
            window.location.href = 'melogin.html';
         }, 3000);
      </script>

  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" class="bg">
    <tr>
    <td valign="top">
    <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffcecb98">
    <tr>
    <td height="108" valign="top" align="center" >
  <img src="resources/logo.png" width="400" height="106" border="0"  /></td>
     </tr>
    <tr>
      <td> <marquee class="mrq" > <b>We team Renovators provides the information about the Mechanics near by your location..Makes life a little easier.</b><marquee> </td>

  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=900>
  </tr>
  <tr>
    <td   width=900; align="right">
    <a href="index.html">  <button style="background-color:#ffcecb98" >Home</button></a>
      <a href="vision_mission.html">  <button style="background-color:#ffcecb98">Vision & Mission </button></a>
      <a href="about_us.html">  <button  style="background-color:#ffcecb98">About us</button></a>
      <a href="melogin.html"><button class="active">Login</button></a>
    </td>
  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=900>
  </tr>
  <tr>
  <td height="20"></td>
  </tr>
  <tr>
    <td width="431" valign="top" align="center">


      <form action="MeLoginS.jsp" method="post" autocomplete="on">
    <table width="431"  cellpadding="0" cellspacing="0" style="height: auto;border: 2px solid black;  padding: 28px;border-radius: 18px;">
      <tr>
      <td width="200"  align="center" colspan="2"><img src="resources/icon.png" width="200"  border="0"  /></td>
      </tr>


   <tr   width="431" >
    <td  height="50" align="center" colspan="2">
  <h2><b class="vg" style="font-style:">Login<b></h2></td>
  </tr>
  <tr>
  <td height="10"></td>
  </tr>
<tr>
<td>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("mailid");    
    String pwd = request.getParameter("psw");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from renovatorsap where mailid='" + userid + "' and psw='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else{
          out.println("<center><font color=red>!Invalid credentials</font></center>");
         
    }
%>
</td>
</tr>
  <tr>
  <td>  Mail Id &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<P class="fas fa-user">&nbsp&nbsp  </P><input class="inputfields" type="text" name="mailid" required></td>
  </tr>
  <tr>
  <td>  Password &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<P class="fas fa-key">&nbsp&nbsp  </P><input class="inputfields" type="password" name="psw" required></td>
  </tr>


  <tr>
    <td align="center" colspan="2"><button type="submit">Login</button></td>
    </tr>

    </td>

  </tr>

  <tr>
  <td height="10"></td>
  </tr>
  <tr>
  <td colspan="2" align="center" ><b><a href="meregister.html" class="vg">Not a member, Register here..</a></b></td>
  </tr>

    </table>
    </form>
  </td>
  </tr>
  <tr>
  <td height="20"></td>
  </tr>
  <tr>
  <td style="border: 1px solid black;"  width=450>
  </tr>

<tr width=450>
  <td align="right">
    Follow us on: &nbsp;<a href="https://www.instagram.com/mohansatishpeta/"><img src="resources/insta.png" width="15"></a> <a href="https://www.facebook.com/profile.php?id=100006184337118"><img src="resources/fb.png" width="15"></a>&nbsp;
  </td>
</tr>
<tr width=380>
  <td align="right">
    Contact us on: <a href="mailto:renovatorsap@gmail.com" class="vg" style="color:blue"><img src="resources/gmail.png" width="18">&nbsp;renovatorsap@gmail.com</a>&nbsp;
  </td>
</tr>
<tr width=450>
  <td align="right">
    <p class="ms">Designed, Developed and Maintained by Mohan Satish Peta&nbsp;</p>
  </td>
</tr>
<tr>
<td style="border: 1px solid black;"  width=450>
</tr>

</table>
</tr>




  </table>
</table>

</body>
</html>





