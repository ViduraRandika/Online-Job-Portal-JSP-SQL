<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="main.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>New User Registration</title>
</head>
<body>





<section class="synup">
<div class="container">
<div class="row">
    <div class="offset-md-4 col-md-4">
        <div class="formsign py-5 px-5">
            <p style="color:red;" id="divCheckPasswordMatch"></p>
        <form method="post" action="registrationaction.jsp" name="myForm">
            <h3>Sign Up</h3>
<input type="radio" name="usertype" value="jobseeker" required>JobSeeker <input type="radio" name="usertype" value="recruiter" required>Recruiter

  <div class="form-group pt-4">
    <label for="exampleInputEmail1">Username</label>
    <input type='text' name='username' placeholder="Username" class="form-control" required>
    
  </div>

<div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" placeholder="Password" id="password" class="form-control" required>
  </div>
    
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input class="form-control" type="password" placeholder="Confirm Password" id="confirm_password" onChange="checkPasswordMatch();" onClick="style.backgroundColor='white'" required >
  </div>


<script type="text/javascript">
function checkPasswordMatch()
{
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm_password").value;

    if (password != confirmPassword)
        {
    	document.getElementById("divCheckPasswordMatch").innerHTML="Passwords do not match!";
        document.getElementById("confirm_password").style.backgroundColor="red";
        }
}
</script>

  
  <input type='submit' name='register' value="Register" class="btn btn-primary">
</form>
        
        <a href="index.jsp">Already a Member Sign in</a>
        </div>
    </div>
</div>
</div>
    </section>




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>