<%-- 
    Document   : insertbook
    Created on : Oct 30, 2014, 3:43:27 PM
    Author     : Amruth
--%>

<%@page  import="java.sql.*" %>
<html>
    
<head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
  <title>JSP Page</title>
  <div align="top" style="width:1330px;height:250px;border:solid;border-width:2px;background:skyblue;">
<img src="veg1.jpg" height="250" width="250"/>
<img src="veg.png" height="250" width="1040"/>
</div>
<link href="style.css" rel="stylesheet" />
<script type="text/javascript">
    var image1 = new Image();
    image1.src = "d1.jpg";
    image1.height="300";
    image1.width="300";
    var image2 = new Image();
    image2.src = "d2.jpg";
    image2.height="300";
    image2.width="300";
	var image3 = new Image();
    image3.src = "d3.jpg";
    image3.height="300";
    image3.width="300";
	var image4 = new Image();
    image4.src = "d4.jpg";
    image4.height="300";
    image4.width="300";
	var image5 = new Image();
    image5.src = "d5.png";
    image5.height="300";
    image5.width="300";
	var image6 = new Image();
    image6.src = "d6.jpg ";
    image6.height="300";
    image6.width="300";
	var image7 = new Image();
    image7.src = "d7.jpg";
    image7.height="300";
    image7.width="300";
	var image8 = new Image();
    image8.src = "save24.jpg";
    image8.height="300";
    image8.width="300";
	var image9 = new Image();
    image9.src = "b1.jpg";
    image9.height="300";
    image9.width="300";
	var image10 = new Image();
    image10.src = "b2.jpg";
    image10.height="300";
    image10.width="300";
	var image11 = new Image();
    image11.src = "b3.jpg";
    image11.height="300";
    image11.width="300";
	
	
</script>
    </head>
  
  <body>
      <%   if ((session.getAttribute("userid") == null)){
    response.sendRedirect("account.html");
}
          %>
<ul>
<li><a href="index.html">Home</a></li>	
<li><a href="howtoorder.html">How to order</a></li>	
<li><a href="reg form.html">Registration</a>			
<li><a href="delivery.html">Delivery Process</a></li>
<li><a href="account.html">My Account</a></li>
<li><a href="feedback.html">Feed Back</a></li>
<li><a href="contact.html">Contact us</a></li>
<li><a href="addbook.jsp">Add Book</a></li>
<li><a href="deletebook.jsp">Delete Book</a></li>
<li><a href="update.jsp">Update a Book</a></li>
<li><a href="logout.jsp">LOGOUT</a></li>
</ul>
</nav>

         
<% String u=request.getParameter("bid");
    String p=request.getParameter("bname");
    String n=request.getParameter("bcost");
        try{ Class.forName("com.mysql.jdbc.Driver");
 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","");

                   Statement stmt=con.createStatement();

                   String sql="insert into addbook values('"+u+"','"+p+"','"+n+"')";

                   stmt.executeUpdate(sql);
                out.println("<h2>BOOK ADDED SUCEESFULLY.</h2>");  
              %>
              <marquee>
<img src="veg2.jpg" height="200" width="205"/>
<img src="veg3.jpg" height="200" width="205"/>
<img src="veg4.jpg" height="200" width="205"/>
<img src="veg5.jpg" height="200" width="205"/>
<img src="11.jpg" height="200" width="205"/>
<img src="22.jpg" height="200" width="205"/>
<img src="33.jpg" height="200" width="205"/>
<img src="44.jpg" height="200" width="205"/>
<img src="345.jpg" height="200" width="205"/>
<img src="456.jpg" height="200" width="205"/>
<!--<img src="1233.jpg" height="200" width="205"></img>-->
</marquee>

             <% } catch(Exception ep){
               
	out.println("ERROR:"+ep);
           }
           %>
   
 </body>
</html>
