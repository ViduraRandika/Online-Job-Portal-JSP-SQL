package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" href=\"styles.css\" type=\"text/css\"/>\n");
      out.write("<title>New User Registration</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("<h1>Registration</h1>\n");
      out.write("<fieldset>\n");
      out.write("<legend>Registration Form</legend>\n");
      out.write("<p style=\"color:red;\" id=\"divCheckPasswordMatch\"></p>\n");
      out.write("<form method=\"post\" action=\"registrationaction.jsp\" name=\"myForm\">\n");
      out.write("<table align='center'>\n");
      out.write("<tr>\n");
      out.write("   <td align='center' colspan=2><input type=\"radio\" name=\"usertype\" value=\"jobseeker\" required>JobSeeker <input type=\"radio\" name=\"usertype\" value=\"recruiter\" required>Recruiter </td>\n");
      out.write("</tr>\n");
      out.write("<tr><td>&nbsp;</td></tr>\n");
      out.write("<tr>\n");
      out.write("    <td align='left'>Username</td>\n");
      out.write("    <td><input type='text' name='username' placeholder=\"Username\" required></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td align='left'>Password</td>\n");
      out.write("    <td> <input type=\"password\" name=\"password\" placeholder=\"Password\" id=\"password\" required></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td align='left'>Confirm Password</td>\n");
      out.write("    <td><input type=\"password\" placeholder=\"Confirm Password\" id=\"confirm_password\" onChange=\"checkPasswordMatch();\" onClick=\"style.backgroundColor='white'\" required ></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function checkPasswordMatch()\n");
      out.write("{\n");
      out.write("    var password = document.getElementById(\"password\").value;\n");
      out.write("    var confirmPassword = document.getElementById(\"confirm_password\").value;\n");
      out.write("\n");
      out.write("    if (password != confirmPassword)\n");
      out.write("        {\n");
      out.write("    \tdocument.getElementById(\"divCheckPasswordMatch\").innerHTML=\"Passwords do not match!\";\n");
      out.write("        document.getElementById(\"confirm_password\").style.backgroundColor=\"red\";\n");
      out.write("        }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<table align='center'>\n");
      out.write("<tr>\n");
      out.write("    <td align='center'><input type='submit' name='register' value=\"Register\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("<a href=\"index.jsp\">Click here to Login</a>\n");
      out.write("</fieldset>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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
