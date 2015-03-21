package org.sousai.filter;

import javax.servlet.FilterChain;    
import javax.servlet.ServletRequest;    
import javax.servlet.ServletResponse;    
import javax.servlet.http.HttpServletRequest;    
    

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;    
import org.sousai.tools.MyPrint;
import org.apache.struts2.dispatcher.StrutsRequestWrapper;

public class UEditorFilter extends StrutsPrepareAndExecuteFilter{    
    
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) {    
        HttpServletRequest request = (HttpServletRequest) req;    
        String url = request.getRequestURI();
        try{  
//            if ("imageUp.jsp".equals(url.substring(url.length()-11))) { 
        	if ("controller.jsp".equals(url.substring(url.length()-14))) {
        		chain.doFilter(new StrutsRequestWrapper((HttpServletRequest) req), res);
//                chain.doFilter(req, res);    
            } else {    
                super.doFilter(req, res, chain);    
            }    
        }catch(Exception e){    
            e.printStackTrace();    
        }    
    }    
 }  