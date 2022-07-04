package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.AccountVO;
import service.LoginService;
import service.LoginServiceImpl;

@WebServlet("/login/*")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(LoginCtrl.class);
	private RequestDispatcher rdp;
	private int isUp;
	private String destPage;
	private LoginService lsv;
       
    public LoginCtrl() {
    	lsv = new LoginServiceImpl();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> Login PATH : {}", path);
		
		switch (path) {
		case "login_auth" :
			AccountVO avo = lsv.login(new AccountVO(
						req.getParameter("account"),
						req.getParameter("pwd"))
					);
			if(avo != null) {
				HttpSession sessionLogin = req.getSession();
				sessionLogin.setAttribute("login_session", avo);
				sessionLogin.setMaxInactiveInterval(60 * 1);
				destPage = "/main.jsp";
			} else {
				req.setAttribute("msg_login", 0);
				destPage = "/";
			}
			break;
		case "logout" :
			HttpSession sessionLogout = req.getSession();
			sessionLogout.invalidate();
			req.setAttribute("msg_logout", 1);
			destPage = "/";
			break;

		default:
			break;
		}
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
