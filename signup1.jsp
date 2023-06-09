<% 




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

    <title>Login #9</title>
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
                  <h3>Sign Up to <strong>T T E</strong></h3>
                  <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
                </div>



                  <%-- start --%>

  <style>



     .radio-container {
      display: inline-block;
      position: relative;
      padding-left: 30px;
      margin-bottom: 15px;
      cursor: pointer;
      font-size: 16px;
    }

    .radio-container input {
      position: absolute;
      opacity: 0;
      cursor: pointer;
    }

    .checkmark {
      position: absolute;
      top: 0;
      left: 0;
      height: 20px;
      width: 20px;
      background-color: #eee;
      border-radius: 50%;
    }
    .cntent {
      display: none;
    }
     .checkmark {
      position: absolute;
      top: 0;
      left: 0;
      height: 20px;
      width: 20px;
      background-color: #eee;
      border-radius: 50%;
    }
    
    .radio-container:hover input ~ .checkmark {
      background-color: #ccc;
    }

    .radio-container input:checked ~ .checkmark {
      background-color: #2196F3;
    }

    .checkmark:after {
      content: "";
      position: absolute;
      display: none;
    }

    .radio-container input:checked ~ .checkmark:after {
      display: block;
    }

    .radio-container .checkmark:after {
      top: 6px;
      left: 6px;
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: white;
    }
  </style>
   <script>
        function showContent(contentId) {
            var contentElements = document.getElementsByClassName("cntent");
            for (var i = 0; i < contentElements.length; i++) {
                contentElements[i].style.display = "none";
            }

            var selectedContent = document.getElementById(contentId);
            selectedContent.style.display = "block";

            // Disable form frmm2 if content1 is selected
            if (contentId === "content1") {
                document.forms["frmm2"].disabled = true;
            } else {
                document.forms["frmm2"].disabled = false;
            }
        }
    </script>


                    <%-- end --%>

                    <div >
                    <label class="radio-container">
                   <input type="radio" class="rdq" name="bit"  onclick="showContent('content1')" />  <span class="checkmark"></span> A Truck Driver </label>
                   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  
                   <label class="radio-container">  
                   <input type="radio" class="rdq" name="bit" onclick="showContent('content2')"/>  <span class="checkmark"></span> A User </label>
                    </div>
                <%-- start of truck --%>
                  <div id="content1" class="cntent">

                 
                <form name="frmm1" action="sign.jsp" method="post">
                    <div class="form-group last mb-4">
                        <label for="name">First Name</label>
                        <input type="text" class="form-control" name="user" required>
                        
                      </div>
                    
                      <div class="form-group last mb-4">
                        <label for="name">Email</label>
                        <input type='email' class="form-control" name="model" required>
                        
                      </div>
                     
                      <div class="form-group last mb-4">
                        <label for="name">Vehicle Registered No.</label>
                        <input type="varchar" class="form-control" name="email" style="text-transform:uppercase" required>
                        
                      </div>
                      <div class="form-group last mb-4">
                        <label for="name">Mobile No.</label>
                        <input type="tel" class="form-control" name="mobile" required>
                        
                      </div>


                   <div class="form-group last mb-4">
                    <label for="password">Set Password</label>
                    <input type="password" class="form-control" name="pas1" required>
                    
                  </div>
                  
                 

                  <input type="submit" value="Sign Up" class="btn btn-pill text-white btn-block btn-primary" >

                  </form>
                 </div>   

                 <%-- end of truck --%>
                        

                    <%-- start of user --%>

               <div id="content2" class="cntent">

                  
                <form name="frmm2" action="usersign.jsp" method="post">
                    <div class="form-group last mb-4">
                        <label for="namee">Full Name</label>
                        <input type="text" class="form-control" name="uuser" style="text-transform:no" required>
                        
                      </div>

                      
                      <div class="form-group last mb-4">
                        <label for="namee">Email</label>
                        <input type='email' class="form-control" name="eemail"  required>
                        
                      </div> 


                      <div class="form-group last mb-4">
                        <label for="namee">Mobile No.</label>
                        <input type="number" class="form-control" name="mmobile" style="text-transform: uppercase" required>
                        
                      </div>
                 

                   <div class="form-group last mb-4">
                    <label for="passwordd">Set Password</label>
                    <input type="password" class="form-control" name="ppas1" style="text-transform:uppercase" required>
                    
                  </div>
                  
             

                  <input type="submit" value="Sign Up" class="btn btn-pill text-white btn-block btn-primary" >
                </form>

              </div>   










                    <%-- end of user --%>



                  <span class="d-block text-center my-4 text-muted">Already have account??</span>
                  <a href="login1.jsp"  class="btn btn-pill text-white btn-block btn-primary" style="text-decoration: none;">
                Sign In</a> 



                  <span class="d-block text-center my-4 text-muted"> or sign up with</span>
                  <p></p>
                  <p></p>
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