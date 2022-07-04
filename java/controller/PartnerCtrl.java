package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.PartnerVO;
import service.PartnerService;
import service.PartnerServiceImpl;

@WebServlet("/pnr/*")
public class PartnerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(PartnerCtrl.class);
	private RequestDispatcher rdp;
	private int isUp;
	private String destPage;
	private PartnerService psv;
       
    public PartnerCtrl() {
    	psv = new PartnerServiceImpl();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> Partner PATH : {}", path);
		
		switch (path) {
		case "list" :
			req.setAttribute("pList", psv.getList());
			destPage = "/partner/list.jsp";
			break;
		case "detail" :
			req.setAttribute("pvo", psv.getSelect(
					Integer.parseInt(req.getParameter("pid"))
					));
			destPage = "/partner/detail.jsp";
			break;
		case "mod" :
			req.setAttribute("pvo", psv.getSelect(
					Integer.parseInt(req.getParameter("pid"))
					));
			destPage = "/partner/modify.jsp";
			break;
		case "modify" :
			String pnr_tel = req.getParameter("pnr_tel1") + "-" + req.getParameter("pnr_tel2") + "-" + req.getParameter("pnr_tel3");
			isUp = psv.modify(new PartnerVO(
					Integer.parseInt(req.getParameter("pid")),
					req.getParameter("pnr_name"),
					req.getParameter("addr"),
					pnr_tel,
					req.getParameter("c_mgr"),
					req.getParameter("c_tel"),
					Integer.parseInt(req.getParameter("sales_mgr"))
					));
			destPage = "/pnr/detail?pid=" + Integer.parseInt(req.getParameter("pid"));
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
