<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>




<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
	
		
		
		<form action="login.jsp">
			
		
			<!-- form-group// -->
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-envelope"></i>
					</span>
				</div>
				<input name="email" class="form-control" placeholder="Email address"
					type="email" id="email" onblur="verifyEmail()">
					
			</div>
			
			
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-lock"></i>
					</span>
				</div>
				<input class="form-control" placeholder="Enter password"
					type="password" name="password" id="password">
			</div>
			<!-- form-group// -->
		
			<!-- form-group// -->
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">
					Login</button>
			</div>
			<!-- form-group// -->
			<p class="text-center">
				Do you want to <a href="signup.jsp">Signup?</a>
			</p>
		</form>
		<span id="tops"></span>
		</article>
	</div>
	<!-- card.// -->



<jsp:include page="footer.jsp"/>
</body>
</html>
</body>
</html>