<?php
  session_start();
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="public/css/bootstrap.min.css">
    <link rel="stylesheet" href="public/css/home.css">
    <link rel="stylesheet" href="public/css/formstyle.css">
    <title>Home</title>
    <script src="public/js/jquery-3.3.1.js"></script>
    <script src="public/js/js.cookie.js"></script>
    <script type="text/javascript">

       function cokie(name,value,expiry) {
         Cookies.set(name, value, { expires: expiry });
       }

    </script>
    <script type="text/javascript">
    function loadDoc(element,file) {
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
         document.getElementById(element).innerHTML = this.responseText;
        }
      };
      xhttp.open("GET", file , true);
      xhttp.send();
    }

    //function for employee update pages
    function eupdate() {
      console.log("eupdate is called")
      $(".rw").attr("readonly", false);
      $(".rw").removeClass("form-control-plaintext");
      $(".rw").addClass("form-control");
      $("#Ubuttons").html("<div class='row'><div class='col-sm-12'><button class='btn btn-lg btn-primary btn-block' type='submit' style='margin-top:10px;'>Update</button></div></div>");
      // <div class='col-sm-6'><button class='reset btn btn-lg btn-primary btn-block' type='button' style='margin-top:10px;' onClick=\'window.location.reload()\''>reset</button></div>
    }
    <?php
      if(isset($_COOKIE['page_content'])){
        $script="$(document).ready(function() { loadDoc('content','public/webPages/";
        $script.=$_COOKIE['page_content']."'); console.log('i was executed'); });";
        echo $script;
      }
      if(isset($_COOKIE['dash'])){
        $script="$(document).ready(function() { loadDoc('dash','public/webPages/";
        $script.=$_COOKIE['dash']."'); console.log('i was executed'); });";
        echo $script;
      }
    ?>
    </script>
    <script type="text/javascript">
       if(<?php echo isset($_SESSION['user']); ?>){
         $('nav').ready(function() {
           document.getElementById('log').innerHTML="<?php echo $_SESSION['user']; ?>";
           document.getElementById('drop').innerHTML="<a class='dropdown-item' href='#' onclick=\"loadDoc('content','public/webPages/employee_details_update.php')\">View Profile</a> <a class='dropdown-item' href='#' onclick=\"loadDoc('content','public/webPages/employer_dashboard_home.php')\">Dashboard</a> <a class=\"dropdown-item\" href='phpLogic/Logout.php'>Logout</a>";
         });

       }
    </script>
  </head>
  <body class="bg-light">

    <header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-pos bg-dark">
        <a class="navbar-brand" href="#">IWP Project</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.php" onclick="cokie('page_content','index.php',1)">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" onclick="loadDoc('content','public/webPages/internlist.php'); cokie('page_content','internlist.php',1);">Internships</a>
            </li>
          </ul>
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown text-right">
              <a class="nav-link dropdown-toggle" href="#" id="log" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               Login
              </a>
              <div class="dropdown-menu" id="drop" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#" onclick="loadDoc('content','public/webPages/login.php?user=employee'); cokie('page_content','login.php?user=employee',1); ">AS Employer</a>
                <a class="dropdown-item" href="#" onclick="loadDoc('content','public/webPages/login_s.php?user=student'); cokie('page_content','login_s.php?user=student',1);">AS Student</a>
              </div>
           </li>
            <li class="nav-item dropdown text-right">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               Register
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#" onclick="loadDoc('content','public/webPages/employee_register.php'); cokie('page_content','employee_register.php',1);">AS Employer</a>
                <a class="dropdown-item" href="#" onclick="loadDoc('content','public/webPages/student_register.php'); cokie('page_content','student_register.php',1);">AS Student</a>
              </div>
           </li>
          </ul>
        </div>
      </nav>
      <div id="dash" class="p">

      </div>
    </header>

    <!-- Begin page content -->
    <main role="main" class="main">
      <div id="content">
        <div class="container">

<!--           <h5 class="text-primary">You can find some logins in <strong>Internshala_project/login.txt</strong></h5>
 -->
          <p>Benefits of Internships</p>
          <ul>

<li>1. Gain valuable work experience</li>
<li>2. Explore a career path</li>
<li>3. Give yourself an edge in the job market</li>
<li>4. Develop and refine skills</li>
<li>5. Receive financial compensation</li>
          </ul>
          <!-- <h3>Other features</h3> -->
        

      </div>
    </main>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="public/js/popper.min.js"></script>
    <script src="public/js/bootstrap.min.js"></script>
  </body>
</html>
