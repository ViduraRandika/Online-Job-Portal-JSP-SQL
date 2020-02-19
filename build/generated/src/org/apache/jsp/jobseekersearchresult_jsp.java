package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class jobseekersearchresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write(" <link href=\"vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/font-awesome-5/css/fontawesome-all.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    <link href=\"vendor/mdi-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("    <link href=\"css/theme.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("<title> JobSeeker Search Result </title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
 
String username=(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype");
if(username==null || usertype!="jobseeker") //to check user is logged in, if user is not logged username will be null and page will redirect to index.jsp
{
	 response.sendRedirect("index.jsp");
}

      out.write('\n');
 String message=request.getParameter("message");
    if(message == "success"){
    
    
      out.write("\n");
      out.write("    <div class=\"alert alert-primary\">jhch</div>\n");
      out.write("    \n");
      out.write("    ");

    }

      out.write("\n");
      out.write(" <div class=\"page-wrapper\">\n");
      out.write("        <!-- HEADER DESKTOP-->\n");
      out.write("        <header class=\"header-desktop4\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"header4-wrap\">\n");
      out.write("                    <div class=\"header__logo\">\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <span class=\"logo_title\"> JobSeeker</span>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"header__tool\">\n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                        <div class=\"account-wrap\">\n");
      out.write("                            <div class=\"account-item account-item--style2 js-item-menu\">\n");
      out.write("                                <div class=\"image\">\n");
      out.write("                                    <img src=\"images/icon/avatar-01.jpg\" alt=\"John Doe\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"content\">\n");
      out.write("                                    <a class=\"js-acc-btn\" href=\"#\">");
      out.print(username );
      out.write("</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"account-dropdown js-dropdown\">\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"account-dropdown__body\">\n");
      out.write("                                        <div class=\"account-dropdown__item\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <i class=\"zmdi zmdi-account\"></i>Account</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"account-dropdown__footer\">\n");
      out.write("                                        <a href=\"logout.jsp\">\n");
      out.write("                                            <i class=\"zmdi zmdi-power\"></i>Logout</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "jobseekermenu.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write(" </div>\n");
      out.write(" <div class=\"col-xl-9\">\n");
      out.write("<center>\n");
      out.write("<fieldset>\n");
      out.write("<legend>Search Results</legend>\n");
      out.write("<form action=\"jobseekersearchresult.jsp\">\n");
      out.write("<input type=\"search\" name=\"keyword\" size=\"50%\"><input type=\"submit\" value=\"Search\">\n");
      out.write("</form>\n");
 
String keyword=request.getParameter("keyword");
String location=request.getParameter("location");
String experience=request.getParameter("experience");
String expectedsalary=request.getParameter("expectedsalary");

Connection con=null;
Statement stmt=null;
ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/ojp";

con=DriverManager.getConnection(url,"root","");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from job where title='"+keyword+"' or keyskills='"+keyword+"' or role='"+keyword+"' or recruiter='"+keyword+"' or location='"+location+"' or experience<='"+experience+"' or salary>='"+expectedsalary+"' "); 

while(rs.next())
{

      out.write("\n");
      out.write("<hr width=30%>\n");
      out.write("<div>\n");
      out.write("<table width=30%>\n");
      out.write("<tr>\n");
      out.write("<td><b><a href=\"jobseekerjobdetails.jsp?jobid=");
      out.print(rs.getString("jobid") );
      out.write('"');
      out.write('>');
      out.print(rs.getString("title") );
      out.write("</a></b></td>\n");
      out.write("<td style=\"text-align:right;\">Posted on ");
      out.print(rs.getString("dateofposting") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(rs.getString("experience") );
      out.write("&nbsp;Years</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(rs.getString("location") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(rs.getString("salary") );
      out.write(" p.a.</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(rs.getString("keyskills") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Vacancy-");
      out.print(rs.getString("vacancy") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("<hr width=30%>\n");
	
}
rs.close();
stmt.close();
con.close();

      out.write("\n");
      out.write("</fieldset>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write(" </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div>\n");
      out.write("        <!-- END PAGE CONTENT  -->\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <script src=\"vendor/jquery-3.2.1.min.js\"></script>\n");
      out.write("    <!-- Bootstrap JS-->\n");
      out.write("    <script src=\"vendor/bootstrap-4.1/popper.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap-4.1/bootstrap.min.js\"></script>\n");
      out.write("    <!-- Vendor JS       -->\n");
      out.write("  \n");
      out.write(" \n");
      out.write("\n");
      out.write("    <!-- Main JS-->\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
