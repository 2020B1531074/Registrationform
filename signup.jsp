<%-- 
    Document   : signup
    Created on : Nov 27, 2024, 12:23:59 AM
    Author     : ARUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>

        <!-- Materialize CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <!-- Materialize JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        
        <style>
            body {
                background: url('img1/ArunImg.jpg') no-repeat center center fixed;
                background-size: cover;
            }
            .loader {
                display: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 class="center-align">Register Here</h3>
                            <form action="Register" method="post" onsubmit="showLoader();">
                                <div class="input-field">
                                    <input type="text" id="user_name" name="user_name" required>
                                    <label for="user_name">Enter your username</label>
                                </div>
                                <div class="input-field">
                                    <input type="password" id="password" name="password" required>
                                    <label for="password">Enter your password</label>
                                </div>
                                <div class="input-field">
                                    <input type="email" id="user_email" name="user_email" required>
                                    <label for="user_email">Enter your email</label>
                                </div>
                                <div class="center-align">
                                    <button type="submit" class="btn light-blue accent-3">Submit</button>
                                </div>
                                <div class="loader center-align" id="loader">
                                    <div class="preloader-wrapper big active">
                                        <div class="spinner-layer spinner-blue-only">
                                            <div class="circle-clipper left">
                                                <div class="circle"></div>
                                            </div>
                                            <div class="gap-patch">
                                                <div class="circle"></div>
                                            </div>
                                            <div class="circle-clipper right">
                                                <div class="circle"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <h3>Please wait...</h3>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous">
      
        </script>

       
    </body>
</html>
