<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home|Health Inspector</title>
<link rel="stylesheet" href="Home.css">
</head>
<script type="text/javascript" src="Home.js">

</script>
<script type="text/javascript">
src="Homegototop.js"
</script>
<body>
<div id="nav" class="nav">
  <ul>
    <li><a href="#login">Login</a></li>
    <li><a href="#register">Register</a></li>
    <li><a href="#about">About</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</div>
<div class="container">
  <div id="welcome" class="bg">
    <div>
      <h1>Welcome</h1>
      <span>To</span>
      <h1>Health Inspector</h1>
    </div>
  </div>
  <div id="login" class="bg">
    <div>
      <span>Welcome Back!</span>
      <section>
      <a class="btn btn-outline color" href="loginForm.html">Login<span class="lines"></span></a>
      </section>
    </div>
  </div>
  <div id="register" class="bg">
    <div>
      <span >New User? Register Here.</span>
      <section>
      <a class="btn btn-outline color" href="registerForm.html">Register As Patient<span class="lines"></span></a>
      <a class="btn btn-outline color" href="doctorregister.jsp">Register As Doctor<span class="lines"></span></a>
	  </section>
    </div>
  </div>
  <div id="about" class="bg">
    <div>
      <span>Health Inspector enables the Patients and Doctors to be connected on the go.</span><br>
      <span>Allows discovery, and retrieval of the available doctors along with their specialization.</span><br>
      <span>Automated scheduling of appointments.</span>
    </div>
  </div>
  <div id="contact" class="bg">
    <div class="container">  
    <h3>Quick Contact</h3>
    <h4>Contact us today</h4>
    <form>
    <fieldset>
      <input placeholder="Your name" type="text" tabindex="1" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your Email Address" type="email" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your Phone Number" type="tel" tabindex="3" required>
    </fieldset>
    <fieldset>
      <textarea placeholder="Type your Message Here...." tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" onclick="this.form.elements['text-input'].value=''">Submit</button>
    </fieldset>
    </form>
</div>
  </div>
</div>
<a href="#nav" id="go-to-top">TOP</a>
</body>
</html>