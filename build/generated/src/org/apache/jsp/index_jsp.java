package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" href=\"styles.css\" type=\"text/css\"/>\n");
      out.write("<title>Login</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\"/>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/Linearicons-Free-v1.0.0/icon-font.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animsition/css/animsition.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/daterangepicker/daterangepicker.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<center>\n");
      out.write(" <fieldset><legend>Login</legend>\n");
      out.write("<form name=\"form1\" method=\"post\" action=\"loginaction.jsp\">\n");
      out.write("<table> \n");
      out.write("<tr>\n");
      out.write(" <td align='center' colspan=2><input type=\"radio\" name=\"usertype\" value=\"jobseeker\" required>JobSeeker <input type=\"radio\" name=\"usertype\" value=\"recruiter\" required>Recruiter <input type=\"radio\" name=\"usertype\" value=\"admin\" required>Admin </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>&nbsp</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Username</td>\n");
      out.write("<td><input name=\"username\" type=\"text\" placeholder=\"Username\" required></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Password</td>\n");
      out.write("<td><input name=\"password\" type=\"password\" placeholder=\"Password\" required></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td></td>\n");
      out.write("<td align=\"center\" colspan=2><input type=\"submit\" name=\"Submit\" value=\"Login\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>                                          \n");
      out.write("</form>\n");
      out.write("<a href=\"registration.jsp\">Click here to register an Account</a>\n");
      out.write("</fieldset>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("<div class=\"limiter\">\n");
      out.write("\t\t<div class=\"container-login100\">\n");
      out.write("\t\t\t<div class=\"wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55\">\n");
      out.write("\t\t\t\t<form name=\"form1\" method=\"post\" action=\"loginaction.jsp\" class=\"login100-form validate-form flex-sb flex-w\">\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title p-b-32\">\n");
      out.write("\t\t\t\t\t\tAccount Login\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("                                    <div class=\"py-3\">\n");
      out.write("                                        <div class=\"custom-control custom-radio custom-control-inline\">\n");
      out.write("  <input type=\"radio\" id=\"\" name=\"usertype\" class=\"custom-control-input\">\n");
      out.write("  <label class=\"custom-control-label\" for=\"customRadioInline1\" value=\"jobseeker\">JobSeeker</label>\n");
      out.write("</div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<span class=\"txt1 p-b-11\">\n");
      out.write("\t\t\t\t\t\tUsername\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input m-b-36\" data-validate = \"Username is required\">\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"text\" name=\"username\" >\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<span class=\"txt1 p-b-11\">\n");
      out.write("\t\t\t\t\t\tPassword\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input m-b-12\" data-validate = \"Password is required\">\n");
      out.write("\t\t\t\t\t\t<span class=\"btn-show-pass\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-eye\"></i>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"password\" >\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"flex-sb-m w-full p-b-48\">\n");
      out.write("\t\t\t\t\t\t<div class=\"contact100-form-checkbox\">\n");
      out.write("\t\t\t\t\t\t\t<input class=\"input-checkbox100\" id=\"ckb1\" type=\"checkbox\" name=\"remember-me\">\n");
      out.write("\t\t\t\t\t\t\t<label class=\"label-checkbox100\" for=\"ckb1\">\n");
      out.write("\t\t\t\t\t\t\t\tRemember me\n");
      out.write("\t\t\t\t\t\t\t</label>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"txt3\">\n");
      out.write("\t\t\t\t\t\t\t\tForgot Password?\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\n");
      out.write("                                            <input class=\"login100-form-btn\" type=\"submit\" name=\"Submit\" value=\"Login\"></td>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t<div id=\"dropDownSelect1\"></div>\n");
      out.write("\t\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/animsition/js/animsition.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("\t<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/select2/select2.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/daterangepicker/moment.min.js\"></script>\n");
      out.write("\t<script src=\"vendor/daterangepicker/daterangepicker.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"vendor/countdowntime/countdowntime.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"js/main.js\"></script>\n");
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
