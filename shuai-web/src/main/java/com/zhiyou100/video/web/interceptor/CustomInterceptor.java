package com.zhiyou100.video.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zhiyou100.video.model.User;
import com.zhiyou100.video.model.admin;

public class CustomInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception {
		String str = req.getRequestURI();
		if(str.endsWith("action")){
			admin ad = (admin)req.getSession().getAttribute("admin");
			if(ad != null){
				return true;
			}else
			res.sendRedirect(req.getContextPath()+"/login.jsp");
			return false;
		}else{
			User us = (User)req.getSession().getAttribute("_front_user");
			if(us != null){
				return true;
			}
			res.sendRedirect(req.getContextPath()+"/front/user.do");
			return false;
		}
	}
}
