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
    paths = {"/aem/custom"}
)
public class HelloWorldAbcServlet extends SlingSafeMethodsServlet {

    @Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        response.getOutputStream().print("Hello World! : AbsoluteUrlServlet starting with /aem/custom" + System.getProperty("line.separator"));
        response.getOutputStream().print("Since the servlet path mentioned is /aem, you need to register the path in script resolver first as /abc would not have been registered by default.");
    }
}
