<%-- <% 

response.setHeader("Catch-control", "no-cache , no-store, must-revalidate"); //HTTP 1.1

response.setHeader("pragma", "no-cache"); //HTTP 1.0

response.setHeader("Expires","1"); //proxys

String username=(String)session.getAttribute("user");
if (username!=null)
{
    response.sendRedirect("home.jsp");
}



%>



<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style2.css">

    <title>Login</title>
  </head>
  <body>
  

  
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
       
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3>Sign In to <strong>T T E</strong></h3>
                  <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p>
                </div>
                <form action="login.jsp" method="post">
                  <div class="form-group first">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="user" id="username" required>

                  </div>
                  <div class="form-group last mb-4">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="p1" id="password" required>
                    
                  </div>
                  <a href ="forget.jsp" style="color:#ff0000;">Forgot Password</a>
                  <p></p>
                  <!-- <div class="d-flex mb-5 align-items-center">
                    <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                      <input type="checkbox" checked="checked"/>
                      <div class="control__indicator"></div>
                    </label>
                    <span class="ml-auto"><a href="changepass.html" class="forgot-pass">Forgot Password</a></span> 
                  </div> -->

                          
                          <%
                          String status=request.getParameter("status");
                          if (status!=null)
                          {
                            if(status.equals("false"))
                            {
                              out.println("Incorect Email or Password");
                            }
                            else
                            {
                              out.println("Something wrong");
                            }
                          }
                            %>


                  <input type="submit" value="Log In" class="btn btn-pill text-white btn-block btn-primary">
                  
                  <span class="d-block text-center my-4 text-muted"> Don't have account??</span>
                  <a href="signup1.jsp"  class="btn btn-pill text-white btn-block btn-primary" style="text-decoration: none;">
                Sign Up</a> 

                  <span class="d-block text-center my-4 text-muted"> or sign in with</span>
                  
                  <div class="social-login text-center">
                    <a href="#" class="facebook">
                      <span class="icon-facebook mr-3"></span> 
                    </a>
                    <a href="#" class="twitter">
                      <span class="icon-twitter mr-3"></span> 
                    </a>
                    <a href="#" class="google">
                      <span class="icon-google mr-3"></span> 
                    </a>
                  </div>
                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html> --%>


<%
    response.setHeader("Catch-control", "no-cache, no-store"); // HTTP 1.1
    //response.setHeader("pragma", "no-cache"); // HTTP 1.0
    //response.setHeader("Expires", "1"); // Proxies
    
    String username = (String) session.getAttribute("user");
    if (username != null) {
        response.sendRedirect("home.jsp");
    }
%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/style2.css">

    <title>Login</title>
</head>
<body>
    <div class="content">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 contents">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="form-block">
                                <div class="mb-4">
                                    <h3>Sign In to <strong>T T E</strong></h3>
                                    <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p>
                                </div>
                                <form action="login.jsp" method="post">
                                    <div class="form-group first">
                                        <label for="username">Mobile no</label>
                                        <input type="text" class="form-control" name="user" id="username" required>
                                    </div>
                                    <div class="form-group last mb-4">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" name="p1" id="password" required>
                                    </div>
                                    <a href="forget.jsp" style="color:#ff0000;">Forgot Password</a>
                                    <p></p>

                                    <%
                                        String status = request.getParameter("status");
                                        if (status != null) {
                                            if (status.equals("false")) {
                                                out.println("Incorrect Email or Password");
                                            } else {
                                                out.println("Something went wrong");
                                            }
                                        }
                                    %>

                                    <input type="submit" value="Log In" class="btn btn-pill text-white btn-block btn-primary">
                                    <span class="d-block text-center my-4 text-muted"> Don't have an account?</span>
                                    <a href="signup1.jsp" class="btn btn-pill text-white btn-block btn-primary" style="text-decoration: none;">Sign Up</a>
                                    <span class="d-block text-center my-4 text-muted"> or sign in with</span>
                                    <div class="social-login text-center">
                                        <a href="#" class="facebook">
                                            <span class="icon-facebook mr-3"></span>
                                        </a>
                                        <a href="#" class="twitter">
                                            <span class="icon-twitter mr-3"></span>
                                        </a>
                                        <a href="#" class="google">
                                            <span class="icon-google mr-3"></span>
                                        </a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
