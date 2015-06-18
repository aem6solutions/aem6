package com.aem6solutions.project.core.servlet;

import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;

import javax.servlet.ServletException;
import java.io.IOException;

/**
 * @author shashi
 */
@SlingServlet(
    paths = {"/bin/abc"}
)
public class HelloWorldServlet extends SlingSafeMethodsServlet {

    @Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        response.getOutputStream().print("Hello World! : AbsoluteUrlServlet starting with /bin<br/>" + System.getProperty("line.separator"));
        response.getOutputStream().print("Since the servlet path mentioned starts with /bin, you needn't register the path in script resolver as /bin/ would have been registered by default.");
    }
}
