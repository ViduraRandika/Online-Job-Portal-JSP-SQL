<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <link href="css/theme.css" rel="stylesheet" media="all">
<title>Recruiter Add Job</title>
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
<legend>Add Job</legend>
<form action="recruiteraddjobaction.jsp"  method="post" id="jobform" >
<table>

<tr>
<td>JobId: </td>
<td><input type="text" name="jobid" value="" required></td>
</tr>

<tr>
<td>Job Title:</td>
<td><input type="text" name="title" required></td>
</tr>

<tr>
<td>Location: </td>
<td>
<select  name="location" required>
<option> - Select -</option>
<option value="colombo">colombo</option>
<option value="kandy">kandy</option>
<option value="badulla">badulla</option>
<option value="jaffna">jaffna</option>
<option value="galle">galle</option>


</select></td>	
</tr>

<tr>
<td>Minimum Experience</td>
<td>
<select name="experience" required>
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
<td >Salary:</td>
<td><input type="text" name="salary" required></td>
</tr>

<tr>
<td>Job Description:</td>
<td><textarea name="description" form="jobform" required></textarea></td>
</tr>

<tr>
<td >Functional Area:  </td>
<td>
<select name="functionalarea" required>
<option> - Select - </option>
<option value="Any">Any</option>
<option value="Automotive">Automotive</option>
<option value="Banking">Banking</option>
<option value="Bio Technology">Bio Technology</option>
<option value="Chemicals">Chemicals</option>
<option value="Construction">Construction</option>
<option value="Consumer Goods">Consumer Goods</option>
<option value="Education">Education</option>
<option value="Entertainment">Entertainment</option>
<option value="Insurance">Insurance</option>
<option value="BPO">BPO</option>
<option value="Computer Hardware">Computer Hardware</option>
<option value="Computer Software">Computer Software</option>
</select></td>

<tr>
<td >Role:  </td>
<td>
<select name="role" required>
<option> - Select - </option>
<option value="Sales Executive">Sales Executive</option>
<option value="Teacher">Teacher</option>
<option value="Manager">Manager</option>
<option value="Accounting">Accounting</option>
<option value="Technician">Technician</option>
<option value="Software Professional">Software Professional</option>
<option value="Software Tester">Software Tester</option>
<option value="IT Professional">IT Professional</option>
</select></td>	
</tr>

<tr>
<td>Key Skills:</td>
<td><input type="text" name="keyskills" placeholder="Java,SQL,HTML,JSP etc." required></td>
</tr>

<tr>
<td >Vacancy: </td>
<td><input type="number" name="vacancy" required></td>
</tr>

<tr>
<td >Interview Date:  </td>
<td><input type="date" name="interviewdate" required></td>
</tr>

<tr>
<td >Interview Time:  </td>
<td><input type="time" name="interviewtime" required></td>
</tr>

<tr>
<td >Interview Place:  </td>
<td><input type="text" name="interviewplace" required></td>
</tr>
<input type=hidden name="recruiter" value="<%=username %>">
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan=2 align=center><input type="submit" value="ADD" ></td>
</tr>

</table>
</form>

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