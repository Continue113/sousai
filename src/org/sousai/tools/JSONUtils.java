package org.sousai.tools;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class JSONUtils {
    public static void toJson(HttpServletResponse response, Object data) 
        {
    	try
    	{
	    	MyPrint.myPrint("translate to JSON!");
	        Gson gson = new Gson();
	        MyPrint.myPrint("0000000000000");
	        String result = gson.toJson(data);
	        MyPrint.myPrint("1111111111111");
	        //System.out.println(result);
	        //response.setDateHeader("Expires", 0);  
		    //response.addHeader("Pragma", "no-cache");  
		    response.setHeader("Cache-Control", "no-cache");
		    MyPrint.myPrint("2222222222222");
	        response.setContentType("text/json; charset=utf-8");
	        MyPrint.myPrint("3333333333333");
	        PrintWriter out = response.getWriter();
	        MyPrint.myPrint("4444444444444");
	        out.print(result);
	        MyPrint.myPrint("5555555555555");
	        out.flush();
	        out.close();
	        MyPrint.myPrint("JSON Success!!");
    	}
    	catch (Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
