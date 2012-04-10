<%-- 
    Document   : addReview
    Created on : Apr 10, 2012, 5:57:42 AM
    Author     : Sheldon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <script language="JavaScript">
            function validate(form) {
                if (form.userID.value=="") {
                    alert("Enter your UserID.");
                    form.userID.focus();
                }
                else if (form.movieID.value=="") {
                    alert("Enter the MovieID.");
                    form.movieID.focus();
                }
                else if (form.reviewText.value=="") {
                    alert("Type your review up please.");
                    form.reviewText.focus();
                }
                else if (form.rating.value=="") {
                    alert("Give the movie a rating, eh?");
                    form.rating.focus();
                }
                else {
                    form.submit();
                }
            }
        </script>

        <body>

        <h1>Please fill the fields to add a new movie.</h1>

        <form action="addReview" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right">UserID:</td>
                    <td><input type="text" name="userID" 
                            value="">
                    </td>
                </tr>
                
                <tr>
                    <td align="right">MovieID:</td>
                    <td><input type="text" name="movieID" 
                            value="">
                    </td>
                </tr>
                <tr>
                    <td align="right" valign="top">Review Text:</td>
                    <td><textarea name="reviewText" rows=5 cols=25 
                            value=""></textarea>
                    </td>
                </tr>
                <tr>
                    <td align="right">Rating:</td>
                    <td><input type="text" name="rating" 
                            value="">
                    </td>
                </tr>
                    <td></td>
                    <td><input type="button" value="Submit" 
                            onClick="validate(this.form)"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
