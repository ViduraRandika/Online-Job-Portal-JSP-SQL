<html>
<head>

<title>Login</title>
<link href="main.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

    <section class="loginsty">
<div class="container">
<div class="row">
    <div class="offset-md-4 col-md-4">
        <div class="formcon py-5 px-5">
        <form name="form1" method="post" action="loginaction.jsp">
            <h3>Login</h3>
<input type="radio" name="usertype" value="jobseeker" required>JobSeeker <input type="radio" name="usertype" value="recruiter" required>Recruiter <input type="radio" name="usertype" value="admin" required>Admin

  <div class="form-group pt-4">
    <label for="exampleInputEmail1">Username</label>
    <input name="username" type="text" placeholder="Username" class="form-control" id="">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input  name="password" type="password" class="form-control" id="" placeholder="password">
  </div>
  
  <input type="submit" name="Submit" value="Login" class="btn btn-primary">
</form>
        
        <a href="registration.jsp">Click here to register an Account</a>
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