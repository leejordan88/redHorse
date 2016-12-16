package org.kosta.ttk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
/**
 * DispatcherServlet -- HandlerInterceptor -- Handler(Controller)
 * 									컨트롤러에 적용할
 * 									공통관심사항(공통기능)
 * 									에 대한 일괄처리
 * 
 * 									로그인 인증여부를 체크하여
 * 									로그인한 사용자만 서비스 받을 수 있는
 * 									서비스에 대해 비인증 사용자가 요청할 경우
 * 									index.jsp로 이동 시키도록 처리한다
 * @author leejs
 *
 */
public class LoginCheckInterceptor extends HandlerInterceptorAdapter{
/*
 * 리턴타입 boolean
 * true를 리턴하면 요청에 대한 핸들러(컨트롤러) 수행
 * false를 리턴하면 요청에 대한 핸들러(컨트롤러) 수행하지 않는다.
 * 
 * 인증 여부를 체크하여(HttpSession null 여부와 세션안에 인증정보(mvo) 존재여부)
 * 비인증 상태이면 response.sendRedirect() 로 index.jsp로 이동을 명령하고 false를 반환한다.
 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("mvo") == null){
			String uri = request.getRequestURI();
			System.out.println("**핸들러 인터셉터 실행**" + uri);
			if(uri == "/login_fail.do"){
				response.sendRedirect("login_fail.do");
			}else{
				response.sendRedirect("before_login.do");
			}
			return false;
		}else{
			return true;
		}
	}
}
