<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        
       
        <meta charset="UTF-8">
        <meta name="viewreport" content="width=device-width,initial-scale=1.0">
        <title>Exam.com</title>
        <link rel="stylesheet" href="style.css">

        
    </head>
    <body >
       
     
        <div class="main-div">
            <div class="inner-div">
                <h2 class="question">Question</h2>
                <ul>
                
                    <li>
                
                        <input type="radio" name="answer" id="ans1" class="answer">
                
                        <label for="ans1" id="option1">answer</label>
                
                    </li>
                
                    <li>
                
                        <input type="radio" name="answer" id="ans2" class="answer">
                
                        <label for="ans2" id="option2">answer</label>
                
                    </li>
                
                    <li>
                
                        <input type="radio" name="answer" id="ans3" class="answer">
                
                        <label for="ans3" id="option3">answer</label>
                
                    </li>
                
                    <li>
                
                        <input type="radio" name="answer" id="ans4" class="answer">
                
                        <label for="ans4" id="option4">answer</label>
                
                    </li>
            
                </ul>
                <button id="submit">submit</button>
                <div id="showScore" class="ScoreArea"> </div>
             </div>
        </div>
        
        <script src="script.js"></script>
    </body>
</html>