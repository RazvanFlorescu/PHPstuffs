<%@ page import="java.util.* , java.sql.SQLException,
	dataAccesObjects.*,
	projectsClasses.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<html>
<head>

    <link rel="stylesheet" type="text/css" href="../css/scores.css">
     <script src="../javascript/pagining.js"></script>
     <script src="../javascript/something.js"></script>
   
</head>


<body>

 <div class = "pageWrap">
 <div class= "top-nav">
 <div class = "top-logo" onclick="location.href='#'"></div>
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
         <a href="#">Acasa</a> 
        
        
   
  </div>

        <div class = "wrapper">

              <div class="img"></div>
              <div class="firsthalf">
                <div class="buton your">
                    <button class="yourkidbtn r" type="submit" name="buton" onclick="showTable('table','img5','img6','img2','img3','img4')">Your kid scores</button>
                </div>
                <div class="buton other">
                    <button class="otherkidbtn r" type="submit" name="buton" onclick="showTable('table2','img5','img6','img2','img3','img4')">Other kids scores</button>
                </div>
                <div class="buton all">
                    <button class="allkidbtn r" type="submit" name="buton" onclick="showTable('table3','img5','img6','img2','img3','img4')">All kids scores</button>
                </div>
               
              </div>
              
              <div class="lasthalf">
                <div class="boximg" id="boximg">             
                  <div class="img2" id="img2"></div>
                  <div class="img3" id="img3"><p>Let's see the scores!</p></div>
                  <div class="img4" id="img4"></div>
                 </div>
                      <div class="tabel" >
                          <div class="img5" id="img5"></div>
                               <div class="tabelos"> 
                               <table id="table">
                                
                                <tr>
                                  <th>Username</th>
                                  <th>Scores</th>
                                  <th>Domain</th>
                                  <th>Difficulty</th>
                                  <th>Date</th>
                                </tr>
                       
			    <%
				ParentUser curentParentUser = ParentUserDao.getParentUser(session.getAttribute("username").toString(),session.getAttribute("password").toString());
				List<Score> scoresList= ScoresDao.getScoresByKidID(ParentUserDao.getKidID(curentParentUser.getID()));  
				//System.out.println(curentParentUser.getID());
				for(Score s : scoresList){
							out.print(" <tr> ");  
						 		out.print(" <td> " + s.getKidUserName() + "</td>");  	
								out.print(" <td> " + s.getScore()       + "</td>");  	 
 								out.print(" <td> " + s.getDomain()      + "</td>"); 
								out.print(" <td> " + s.getDifficulty()  + "</td>");  
								out.print(" <td> " + s.getTestDate()    + "</td>");  
							out.print(" </tr> ");  	 
				}
				%>
                              </table>
                               <div id="pageNavPosition" class="pageNavPosition"></div>
                               <script type="text/javascript"><!--
                                  var pager = new Pager('table', 10); 
                                  pager.init(); 
                                  pager.showPageNav('pager', 'pageNavPosition'); 
                                  pager.showPage(1);
                              //--></script>
                              </div>
                               <div class="img6" id="img6"></div>
                    </div>
              </div>
              
              
   
        </div>
        
           <div class="tabel2" >
                          <div class="img5" id="img5"></div>
                               <div class="tabelos"> 
                               <table id="table2">
                                
                                <tr>
                                  <th>Username</th>
                                  <th>Scores</th>
                                  <th>Domain</th>
                                  <th>Difficulty</th>
                                  <th>Date</th>
                                </tr>
                       
			    <%
				
				List<Score> todayScoresList= ScoresDao.getTodayScores();  
				//System.out.println(curentParentUser.getID());
				for(Score s : todayScoresList){
							out.print(" <tr> ");  
						 		out.print(" <td> " + s.getKidUserName() + "</td>");  	
								out.print(" <td> " + s.getScore()       + "</td>");  	 
 								out.print(" <td> " + s.getDomain()      + "</td>"); 
								out.print(" <td> " + s.getDifficulty()  + "</td>");  
								out.print(" <td> " + s.getTestDate()    + "</td>");  
							out.print(" </tr> ");  	 
				}
				%>
                              </table>
                               <div id="pageNavPosition" class="pageNavPosition"></div>
                               <script type="text/javascript"><!--
                                  var pager2 = new Pager('table2', 10); 
                                  pager2.init(); 
                                  pager2.showPageNav('pager2', 'pageNavPosition'); 
                                  pager2.showPage(1);
                              //--></script>
                              </div>
                               <div class="img6" id="img6"></div>
                    </div>
              </div>
              
              
   
        </div>
        
          <div class="tabel3" >
                          <div class="img5" id="img5"></div>
                               <div class="tabelos"> 
                               <table id="table3">
                                
                                <tr>
                                  <th>Username</th>
                                  <th>Scores</th>
                                  <th>Domain</th>
                                  <th>Difficulty</th>
                                  <th>Date</th>
                                </tr>
                       
			    <%
				
				List<Score> allScoresList= ScoresDao.getAllScores();  
				//System.out.println(curentParentUser.getID());
				for(Score s : allScoresList){
							out.print(" <tr> ");  
						 		out.print(" <td> " + s.getKidUserName() + "</td>");  	
								out.print(" <td> " + s.getScore()       + "</td>");  	 
 								out.print(" <td> " + s.getDomain()      + "</td>"); 
								out.print(" <td> " + s.getDifficulty()  + "</td>");  
								out.print(" <td> " + s.getTestDate()    + "</td>");  
							out.print(" </tr> ");  	 
				}
				%>
                              </table>
                               <div id="pageNavPosition" class="pageNavPosition"></div>
                               <script type="text/javascript"><!--
                                  var pager3 = new Pager('table3', 10); 
                                  pager3.init(); 
                                  pager3.showPageNav('page3r', 'pageNavPosition'); 
                                  pager3.showPage(1);
                              //--></script>
                              </div>
                               <div class="img6" id="img6"></div>
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