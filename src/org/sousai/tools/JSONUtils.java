package org.sousai.tools;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class JSONUtils {
    public static void toJson(HttpServletResponse response, Object data) 
        throws IOException {
        Gson gson = new Gson();
        //String result = gson.toJson(data);
        String test1 = "重庆";
        String test2 = "江津";
        String result = "[{\"schoolId\":\"" + test1 + "\",\"schoolName\":\""+test2+"\"}]";
        System.out.println(result);
        response.setDateHeader("Expires", 0);  
	    response.addHeader("Pragma", "no-cache");  
	    response.setHeader("Cache-Control", "no-cache"); 
        response.setContentType("text/json; charset=utf-8");
        /*PrintWriter out = response.getWriter();
        out.print(result);
        out.flush();
        out.close();*/
        response.getWriter().write(result);
        response.getWriter().flush();
        response.getWriter().close();
    }
}
