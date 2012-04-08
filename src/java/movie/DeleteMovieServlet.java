package movie;

/**
 *
 * @author Chappy
 */

import data.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class DeleteMovieServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response) 
            throws ServletException, IOException
    {
        String movieID = request.getParameter("movieID");
        
        MovieDB.delete(movieID);
        
        String url = "/ListMovies";
        RequestDispatcher dispatcher =
              getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }
}
