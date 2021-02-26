






<!-- This Registration Page Is Prasanths And it is Not Related To our Project Registration our Registration Page is register.1jsp -->
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>


<html>
<head>
<meta charset="UTF-8">  

      <meta name="viewport" content="width=device-width, initial-scale=1.0">                <title>Registration Form With Html & Css</title>  

      <link rel="stylesheet" href="style.css">  

      <meta name="viewport" content="width=device-width, initial-scale=1"> 
      
      
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Home</title>

<style>


body {background-color: YELLOW;}
/* body {
	background-color: white;
} */

ul#bstyle {
	list-style-type: none;
	margin: 1%;
	padding: 1%;
}

ul#bstyle li {
	float: left;
	display: block;
	text-align: center;
	width: 18%;
}

button.margin {
	border: none;
	background-color: transparent;
	text-align: center;
	color: Black;
	padding: 10px 15px;
	display: inline-block;
	font-size: 15px;
	font-style: oblique;
	cursor: pointer;
}

* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

.active {
	background-color: #717171;
}

header {
	background-color: #ffd480;
	padding: 40px;
	text-align: left;
	font-size: 35px;
	color: black;
	size: 20%;
}

footer {
	width: 100%;
	height: 250px;
	background-color: #ffd480;
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	position: static;
	bottom: 0;
	index: -1;
	padding: 50px;
}

.footer-wrapper {
	width: 1100px;
	margin: auto;
}

.single-footer {
	width: 25%;
	float: left;
	text-align: center;
	color: black;
}

.single-footer ul {
	margin: 10px;
	padding: 5px;
	list-style: none;
}

.single-footer ul a {
	text-transform: capitalize;
	text-decoration: none;
	color: black;
	font-size: 15px;
}

.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: 10px;
}

tr {
	font-style: italic;
}
.RegistButton{
align:center;
}




</style>

</head>

<header>
	<img alt="no image"
		src="data:image/jpeg;base64,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"
		style: height="8%"> <img alt="no image"
		src="data:image/png;base64,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"
		style: height="10%">
	<ul id="bstyle">
		<li><button type="submit" class="margin"
				onclick="location.href='Medicines.jsp';">
				<h4>Get Adhar</h4>
			</button></li>

		<li><button type="submit" class="margin"
				onclick="location.href='Healthcare.jsp';">
				<h4>Update Adhar</h4>
			</button></li>




		<li><button type="submit" class="margin"
				onclick="location.href='Register.jsp';">
				<h4>Home</h4>
			</button></li>
		<li></li>

	</ul>
</header>
<body>
	<br>
	<br>
	<br>
	<br>
	
	
	
<!-- <form action="Aadhar">  
             
<center>
			<h1>Aadhar Registration!!</h1>
		</center>
         <center>   

            <label>     

              <input type="text" class="input" name="firstname" placeholder="FIRST NAME:"/>                   <div class="line-box">          

              <div class="line"></div>        

              </div>    

            </label>     

            

			
            <label>     

              <input 

                     type="text" 

                     class="input" 

                     name="lastname"        

                     placeholder="LAST NAME:"/>        

              <div class="line-box">         

                <div class="line"></div>        

              </div>    

            </label>     

            

            <label>     

              <input 

                     type="number" 

                     class="input" 

                     name="password" 

                     placeholder="PASSWORD"/>        

              <div class="line-box">          

                <div class="line"></div>        

              </div>    

            </label>     

            

            <label>     

              <input 

                     type="password" 

                     class="input" 

                     name="confirm" 

                     placeholder="PHONE NUMBER"/>      

              <div class="line-box">        

                <div class="line"></div>      

              </div>    

            </label>     
            
            
            
            <label>     

              <input 

                     type="email" 

                     class="input" 

                     name="confirm" 

                     placeholder="EMAIL ID"/>      

              <div class="line-box">        

                <div class="line"></div>      

              </div>    

            </label>     
            
            
            
             <label>     

              <input 

                     type="text" 

                     class="input" 

                     name="confirm" 

                     placeholder="ADDRESS1"/>      

              <div class="line-box">        

                <div class="line"></div>      

              </div>    

            </label>   
            
            
            
            <input 

                     type="text" 

                     class="input" 

                     name="confirm" 

                     placeholder="STATE"/>      

              <div class="line-box">        

                <div class="line"></div>      

              </div>    

            </label>    
            
            
            <input 

                     type="text" 

                     class="input" 

                     name="confirm" 

                     placeholder="PINCODE"/>      

              <div class="line-box">        

                <div class="line"></div>      

              </div>    

            </label>  

            

            <button type="submit">submit</button>  

          </form> 
	
	</centre>
	 -->
	 
	 
	 
	 
	<!--  <script> 
	 
	 
	 
	 
	 
	 
	 function phonenumber(inputtxt)
	 {
	   var phone = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
	   if((inputtxt.value.match(phone))
	         {
	       return true;
	         }
	       else
	         {
	         alert("message");
	         return false;
	         }
	 }
     function GEEKFORGEEKS() { 
        var name = document.forms["RegForm"]["Name"]; 
        var email = document.forms["RegForm"]["EMail"]; 
        var phone = document.forms["RegForm"]["phone"]; 
        var what = document.forms["RegForm"]["Subject"]; 
        var password = document.forms["RegForm"]["Password"]; 
        var address = document.forms["RegForm"]["Address"]; 
  
        if (name.value == "") { 
            window.alert("Please enter your name."); 
            name.focus(); 
            return false; 
        } 
  
        if (address.value == "") { 
            window.alert("Please enter your address."); 
            address.focus(); 
            return false; 
        } 
  
        if (email.value == "") { 
            window.alert( 
              "Please enter a valid e-mail address."); 
            email.focus(); 
            return false; 
        } 
  
        if (phone.value == "") { 
            window.alert( 
              "Please enter your telephone number."); 
            phone.focus(); 
            return false; 
        } 
     if (phone.value > 10) { 
            window.alert( 
              "Please enter your telephone number."); 
            phone.focus(); 
            return false; 
        } 
         
        
  
        if (password.value == "") { 
            window.alert("Please enter your password"); 
            password.focus(); 
            return false; 
        } 
  
        if (what.selectedIndex < 1) { 
            alert("Please enter your course."); 
            what.focus(); 
            return false; 
        } 
  
        return true; 
    }  
</script> -->
<form action="Aadhar">


		<center>
			<h1>Aadhar Registration!!</h1>
		</center>
		<center>
			<table>

				<tr>
					<td>First Name:</td>
					<td><input type="text" name="first"></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="last"></td>
				</tr>
				<tr>
					<td>Phone No:</td>
					<td><input type="number" name="phone"></td>
				</tr>
				<tr>
					<td>Email-ID:</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="addressl"></td>
				</tr>

				<tr>
					<td>State:</td>
					<td><input type="text" name="state"></td>
				</tr>
				<tr>
					<td>Pin code:</td>
					<td><input type="number" name="pincode"></td>
				</tr>
				
				<tr class="RegistButton">
					<td><input style="font-style: italic;" type="submit"
						value="Register"></td>
					<a href=""></a>
				</tr>
				


			</table>
		</center>



	</form>




	<!-- <div class="slideshow-container">

<div class="mySlides fade">
<a href="homeappliances.jsp">
  <img src="images/home.jpg" style="width:120%; height:75%;" alt="no image"></a>
</div>

<div class="mySlides fade">
 <a href="laptops.jsp">
  <img src="images/adhar.png" style="width:120%; height:205%;" alt="no image"></a>
</div>

<div class="mySlides fade">
  <a href="mobiles.jsp">
  <img src="images/mob.jpg" style="width:120%; height:75%;" alt="no image"></a>
</div>

<div class="mySlides fade">
  <a href="televisions.jsp">
  <img src="images/tv1.jpg" style="width:120%; height:205%;" alt="no image"></a>
</div>

</div>

<br><br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
</div> -->
	<br>
	<br>
	<br>
	<br>
</body>




<footer>
 <div class="footer-wrapper">
  
 <div class="single-footer">
  <h4>CONTACT US</h4>
<ul>
	<li><a href="#" >Tollfree : 1947</a></li>
	<li><a href="#" >Email:govt.Aadhar.co@Aadhar.com</a></li>
	
		</ul>
 </div>
 
 <div  class="single-footer">





 <h4> UIAD HEAD OFFICE </h4>
<ul>
	<li><a href="" >Unique Identification Authority of India</a></li>
	<li><a href="" >Government of India(GOI)</a></li>
	<li><a href="" >Bhangla Saheb Road, Gole Market</a></li>
	<li><a href="" >New Delhi - 110001</a></li>

	</ul>
 </div>
<div  class="single-footer">
 <h4> WEB SITE POLICIES</h4>
<ul>
	<li><a href="" >Terms And Conditions</a></li>
	<li><a href="" >Privacy policy</a></li>
	<li><a href="" >HyperLink Poilicy</a></li>
	<li><a href="" >Copyright policy</a></li>
	<li><a href="" >Disclaimer</a></li>
	<li><a href="" >Help</a></li>
	
		</ul>
 </div>
 <div  class="single-footer">
 <h4> GOVERNMENT OF INDIA</h4>
<ul>
	<li><a href="" >My Gov</a></li>
	<li><a href="" >National portal of India </a></li>
	<li><a href="" >Digital India</a></li>
	<li><a href="" >GST.govt.in</a></li>
	<li><a href="" >DBT bharath</a></li>
	<li><a href="" >Integrity pledge</a></li>
	
	</ul>
 </div>
   <hr>
  </footer>
  
  
  

</html>



