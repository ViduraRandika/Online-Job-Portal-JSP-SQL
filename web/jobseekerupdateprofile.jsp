<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <link href="css/theme.css" rel="stylesheet" media="all">
<title>JobSeeker Update Profile</title>
</head>
<body>


<% 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
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
                            <span class="logo_title"> JobSeeker</span>
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
                                            <a href="jobseekerhome.jsp">
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





<jsp:include page="jobseekermenu.jsp"/>

 </div>
 <div class="col-xl-9">
<center>
<fieldset>
<legend>Profile Details</legend>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/ojp";

 con=DriverManager.getConnection(url,"root","");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from jobseekerprofile where username='"+username+"'");
 
 %>
 	
 	<%
 
 while(rs.next())
 {
%>

<form method="post" action="jobseekerupdateprofileaction.jsp">
<table>

<tr>
<td>Basic Details</td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="fname" placeholder="FirstName" value=<%=rs.getString("fname") %>></td>
</tr>

<tr>
<td></td>
<td><input type="text" name="lname" placeholder="LastName" value=<%=rs.getString("lname") %>></td>
</tr>

<tr>
<td>Designation</td>
<td><input type="text" name="designation" value=<%=rs.getString("designation") %>></td>
</tr>
<tr>
<td>Location</td>
<td><input type="text" name="location" value=<%=rs.getString("location") %>></td>
</tr>
<tr>
<td>Experience</td>
<td><select name="experience"  class="Form_fields" required>
					 <option value="">- Select -</option>
					 <option value="0">0</option>
					 <option value="1">1</option>

					 <option value="2">2</option>
					 <option value="3">3</option>
					 <option value="4">4</option>
					 <option value="5">5</option>
					 <option value="6">6</option>
					 <option value="7">7</option>

					 <option value="8">8</option>
					 <option value="9">9</option>
					 <option value="10">10</option>
					 <option value="11">11</option>
					 <option value="12">12</option>
					 <option value="13">13</option>

					 <option value="14">14</option>
					 <option value="15">15</option>
					 <option value="16">16</option>
					 <option value="17">17</option>
					 <option value="18">18</option>
					 <option value="19">19</option>

					 <option value="20">20</option>
					 <option value="21">21</option>
					 <option value="22">22</option>
					 <option value="23">23</option>
					 <option value="24">24</option>
					 <option value="25">25</option>

					 <option value="26">26</option>
					 <option value="27">27</option>
					 <option value="28">28</option>
					 <option value="29">29</option>
					 <option value="30">30</option>
					 <option value="31">31</option>

					 <option value="32">32</option>
					 <option value="33">33</option>
					 <option value="34">34</option>
					 <option value="35">35</option>
					 <option value="36">36</option>
					 <option value="37">37</option>

					 <option value="38">38</option>
					 <option value="39">39</option>
					 <option value="40">40</option>
					 <option value="41">41</option>
					 <option value="42">42</option>
					 <option value="43">43</option>

					 <option value="44">44</option>
					 <option value="45">45</option>
					 <option value="46">46</option>
					 <option value="47">47</option>
					 <option value="48">48</option>
					 <option value="49">49</option>

					 <option value="50">50</option>
					 </select>&nbsp;Years</td>
</tr>
<tr>
<td>Contact Details</td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" value=<%=rs.getString("email") %>></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="mobile" value=<%=rs.getString("mobile") %>></td>
</tr>
<tr>
<td>Key Skills</td>
</tr>
<tr align=center>
<td colspan=2><input type="text" name="keyskills" placeholder="e.g. Hardworking, Time Management" value=<%=rs.getString("keyskills") %>></td>
</tr>
<tr>
<td>Projects</td>
</tr>
<tr align=center>
<td colspan=2><input type="text" name="projects" placeholder="e.g. Online Job Search Portal in Java" value=<%=rs.getString("projects") %>></td>
</tr>
<tr>
<td>IT Skills</td>
</tr>
<tr align=center>
<td colspan=2><input type="text" name="itskills" placeholder="e.g. Java,SQL,HTML,JSP" value=<%=rs.getString("itskills") %>></td>
</tr>
<tr>
<td>Education</td>
</tr>
<tr align=center>
<td colspan=2><input type="text" name="education" placeholder="e.g. BCA" value=<%=rs.getString("education") %>></td>
</tr>
<tr>
<td>Certifications</td>
</tr>
<tr align=center>
<td colspan=2><input type="text" name="certifications" placeholder="e.g. Certificate in HTML, JavaScript, JSP" value=<%=rs.getString("certifications") %>></td>
</tr>
<tr>
<td>Work Details</td>
</tr>
<tr align=center>
<td colspan=2><input type="text" name="workdetails" placeholder="e.g. Java Programmer in TCS" value=<%=rs.getString("workdetails") %>></td>
</tr>
<tr>
<td>Personal Details</td>
</tr>
<tr>
<td>DOB</td>
<td><input type="date" name="dob" value=<%=rs.getString("dob") %>></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="male" required>Male<input type="radio" name="gender" value="female" required>Female</td>
</tr>
<td>Hometown</td>
<td><input type="text" name="hometown" value=<%=rs.getString("hometown") %>></td>
</tr>

<td>Maritial Status</td>
<td><input type="radio" name="maritialstatus" value="single" required>Single<input type="radio" name="maritialstatus" value="married" required>Married<input type="radio" name="maritialstatus" value="divorced" required>Divorced</td>
</tr>
<td>Languages Known</td>
<td><input type="text" name="languagesknown" value=<%=rs.getString("languagesknown") %>></td>
</tr>
<tr>
<td>&nbsp</td>
</tr>
<tr>
<td align="center" colspan=2><input type="submit" value="Update"></td>
</tr>
</table>
</form>
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