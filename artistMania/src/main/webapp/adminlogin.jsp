<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Admin Panel</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <style>
    /* Add custom styles here */
    body {
 		background-image:url("https://imgs.search.brave.com/kZhJCWz_YgIE4ED9gfFcmOEE0sU9jcj1926lPjr0WTU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDI1MDg0/MjIucG5n");
 	     background-size: cover; 
    }
    .login-container {
      margin-top: 100px;
      border:2px solid black;
      border-radius:14px;
    }
  </style>
</head>
<body>





  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-4">
        <div class="card login-container">
          <div class="card-body">
           <h2 class="card-title text-center mb-2 ">Artist Mania </h2>
            <h4 class="card-title text-center mb-4">Admin Panel Log-in</h4>
            
            <form action="adminlogincheck.jsp">
              <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" name="username" placeholder="Enter username">
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" placeholder="Enter password">
              </div>
              <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
          
          
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>