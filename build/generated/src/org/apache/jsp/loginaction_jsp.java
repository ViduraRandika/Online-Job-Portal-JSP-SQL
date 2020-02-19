package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class loginaction_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Login</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");

try
{
String username=request.getParameter("username");
String password=request.getParameter("password");



  if(username.equals("admin") && password.equals("admin"))
   {
   session.setAttribute("username",username);
   session.setAttribute("usertype","admin");
   response.sendRedirect("adminhome.jsp");
   }

  
  Connection con=null;
  Statement stmt=null;
  ResultSet rs=null;

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/ojp";
 
 con=DriverManager.getConnection(url,"root","");
 stmt=con.createStatement();
 
 rs=stmt.executeQuery("select * from Login where username='"+username+"' and password='"+password+"'LIMIT 1");
String usertype=rs.getString("usertype");
  if(rs.next())
  {
	  session.setAttribute("username",username);
	  rs.close();
	  stmt.close();
	  con.close();
	  if(usertype == "jobseeker")
	   {  
	   response.sendRedirect("jobseekerhome.jsp");
	   }
	  else if(usertype=="recruiter")
	   {
	   session.setAttribute("usertype","recruiter");
       response.sendRedirect("recruiterhome.jsp");
	   }
  }
  else
  {

      out.write("\n");
      out.write("Invalid Username or Password or User Type\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "index.jsp", out, false);
      out.write('\n');

  }
}
catch(NullPointerException e)
{
	out.print("Please Enter Login Details");

      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "index.jsp", out, false);
      out.write('\n');

}
catch(Exception e)
{
	out.print(e);
}

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
