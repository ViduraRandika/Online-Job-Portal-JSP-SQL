<%@ page import="java.sql.*" %>

<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <link href="css/theme.css" rel="stylesheet" media="all">
<title> Recruiter Search Result </title>
</head>
<body>

<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="recruiter") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}
%>
<div class="page-wrapper">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop4">
            <div class="container">
                <div class="header4-wrap">
                    <div class="header__logo">
                        <a href="#">
                            <span class="logo_title"> Jobrecruiter</span>
                        </a>
                    </div>
                    <div class="header__tool">
                        
                       
                        <div class="account-wrap">
                            <div class="account-item account-item--style2 js-item-menu">
                                <div class="image">
                                    <img src="images/icon/avatar-01.jpg" alt="John Doe" />
                                </div>
                                <div class="content">
                                    <a class="js-acc-btn" href="#"><%=username %></a>
                                </div>
                                <div class="account-dropdown js-dropdown">
                                    
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="recruiterhome.jsp">
                                                <i class="zmdi zmdi-account"></i>Account</a>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__footer">
                                        <a href="logout.jsp">
                                            <i class="zmdi zmdi-power"></i>Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>



<jsp:include page="recruitermenu.jsp"/>


 </div>

                        <div class="col-xl-9">
<center>
<fieldset>
<legend>Search Results</legend>

<% 
String search=request.getParameter("search");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/ojp";

con=DriverManager.getConnection(url,"root","");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from jobseekerprofile where username='"+search+"' or fname='"+search+"' or lname='"+search+"' or designation='"+search+"' or location='"+search+"' or experience='"+search+"' or email='"+search+"' or mobile='"+search+"' or keyskills='"+search+"' or projects='"+search+"' or itskills='"+search+"' or education='"+search+"' or certifications='"+search+"' or workdetails='"+search+"' or dob='"+search+"' or gender='"+search+"' or hometown='"+search+"' or maritialstatus='"+search+"' or languagesknown='"+search+"'"); 

while(rs.next())
{
%>

<hr width=30%>
<div class="recruitersearchresult">
<table width=30%>
<tr>
<td><b><a href="recruiterjobseekerprofile.jsp?user=<%=rs.getString("username") %>"><%=rs.getString("fname") %> <%=rs.getString("lname") %></a></b></td>
</tr>
<tr>
<td><%=rs.getString("designation") %></td>
</tr>
<tr>
<td><%=rs.getString("experience") %>Years</td>
</tr>
<tr>
<td><%=rs.getString("location") %></td>
</tr>
<tr>
<td><%=rs.getString("keyskills") %></td>
</tr>
</table>
</div>
<hr width=30%>

<%	
}
rs.close();
stmt.close();
con.close();
%>
</fieldset>
</center>
</div>
                    </div>
                </div>
            </section>
        </div>
        <!-- END PAGE CONTENT  -->

    </div>



















 <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
  
 

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>