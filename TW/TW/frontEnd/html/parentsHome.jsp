<%@ page import="java.util.* , java.sql.SQLException,
	dataAccesObjects.*,
	projectsClasses.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
     <script src="../javascript/pagining.js"></script>
     <script src="../something.js"></script>
   
</head>


<body>

 <div class = "pageWrap">
 <div class= "top-nav">
 <div class = "top-logo" onclick="location.href='parentsHome.html'"></div>
  <a href="#"><% out.print(session.getAttribute("username").toString());%></a>
  <div class="settingsBut">
            <button class="dropbtn"></button>
            <div class="settings-content">
               <a href="change-password.html">Change password</a> <br>
               <a href="delete-account.html">Delete account</a><br>
               <a href="login.html">Logout</a>
            </div>
  </div>��
         <a href="contact.html">Contact</a>
         <a href="scores.jsp">Scores</a>
         <a href="formular.html">Add a test</a> 
         <a href="parentsHome.jsp">Acasa</a> 
        
        
   
  </div>

        <div class = "wrapper">

             <div class = "tnt">
      

              <div class="firsthalf">
              <div class="title">Most Accessed Tests</div>
                  <div class="container a">
                   
                    <div class="hrd">
                       <div class="t mhard h">11.3%</div>
                    </div>
                    <div class="mdm" >
                       <div class="t mmedium m">3%</div>
                    </div>
                    <div class="esy">
                       <div class="t measy e">6.5%</div>
                    </div>
                    <div class="name">Math</div>
                  </div>

                  <div class="container b">
                    <div class="hrd">
                      <div class="t ghard h">0.67%</div>
                    </div>
                    <div class="mdm">
                      <div class="t gmedium m"> 21.17%</div>
                    </div>
                    <div class="esy">
                      <div class="t geasy e">12.3%</div>
                    </div>
                    <div class="name">Geography</div>
                  </div>

                  <div class="container a">              
                    <div class="hrd">
                      <div class="t hhard h">8.6%</div>
                    </div>
                    <div class="mdm">
                      <div class="t hmedium m">6.12%</div>
                    </div>
                    <div class="esy">
                      <div class="t heasy e"> 13.56%</div>
                    </div>
                    <div class="name">History</div>
                  </div>

                  
                  <div class="container b">
                    <div class="hrd">
                      <div class="t bhard h"> 35.17%</div>
                    </div>
                    <div class="mdm">
                      <div class="t bmedium m">12.15%</div>
                    </div>
                    <div class="esy">
                      <div class="t beasy e"> 6%</div>
                    </div>
                    <div class="name">Biology</div>
                  </div>

                  
                  <div class="container a">
                    <div class="hrd">
                      <div class="t ehard h">8.6%</div>
                    </div>
                    <div class="mdm">
                      <div class="t emedium m">1.56%</div>
                    </div>
                    <div class="esy">
                      <div class="t eeasy e"> 17%</div>
                    </div>
                    <div class="name">English</div>
                  </div>

                </div>
               <div class="lasthalf">
               <div class="nameL"><u><b>Legend</b></u> <br><br> the colors represents the difficulty of the domains</div>
                  <div class="legendP">
                     <div class="img" id="img"></div>
                     <div class="legend">
                       <div class="sqH"><br>Hard</div>
                       <div class="sqM"><br>Medium</div>
                       <div class="sqE"><br>Easy</div>
                     </div>
                  </div>

                  <a href="#" onclick = " window.scrollBy(1000, 0)"> <img height="250" width="250" src="../images/cookie.png" class="cookie"></a>

                  <div class="img1" id="img1"></div>
            </div>
   
        </div>
        </div>
        </div>
        <div class="footer">
<div class= "bottom-first-bar">
      <div class = "first_bottom_column">
            <div class = "bottom-logo"></div>
            <label class = "bottom_column_label"> <p>Just for kids game is one of the most amazing and interactive full of entartaiment quiz game you will find on the internet. JUST for fun!</p></label>
      </div>
      <div class = "second_bottom_column"><label class = "bottom_column_label">         
                                                <h3>NAVIGATION</h3>
                                                <div class = "bottom-nav">
                                                   <a href="#">Acasa</a>
                                                   <a href="#">Contact</a>
                                                   <a href="#">Scores</a>
                                                   <a href="#">About</a>
                                                   <a href="#">Settings</a>
                                                </div>
                                          </label></div>
      <div class = "third_bottom_column"><label class = "bottom_column_label">
                                                   <h3>SOCIAL</h3></label>
                                                    <div class = "socialItems">
                                                        <a class = "fb"     href="#"><img  class = "socialFb" src="../images/fb.png"></a>
                                                        <a class = "tweet"  href="#"><img class = "socialTweet" src="../images/twitter.png"></a>
                                                        <a class = "google" href="#"><img  class = "socialGoogle" src="../images/google.png"></a>
                                                        <a class = "feed"   href="#"><img class = "socialFeed" src="../images/feed.png"></a>
                                                     </div>

                                          </div>
      <div class = "fourth_bottom_column"> <label class = "bottom_column_label">
                                         <h3>CONTACT INFORMATION</h3>
                                                    <p>Titu Maiorescu nr 7, Iasi,Romania<br><br>
                                                    codryn96@gmail.com</p>
                                                   
                                          </label></div>
  </div>
  
  <div class= "bottom-second-bar">
      <br><label class = "bottom-second-bar-label">2017 ©Codrin's Leonte team | All Rights Reserved.</label>
  </div>

 </div>


</body>
</html>