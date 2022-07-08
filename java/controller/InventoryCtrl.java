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

import domain.InventoryVO;
import service.InventoryService;
import service.InventoryServiceImpl;

@WebServlet("/invt/*")
public class InventoryCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(InventoryCtrl.class);
	private RequestDispatcher rdp;
	private int isUp;
	private String destPage;
	private InventoryService isv;

    public InventoryCtrl() {
    	isv = new InventoryServiceImpl();
    }

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");

		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> Inventory PATH : {}", path);

		switch (path) {
		case "list" :
			req.setAttribute("iList", isv.getList(
					Integer.parseInt(req.getParameter("classifi")),
					Integer.parseInt(req.getParameter("vendor"))
					));
			destPage = "/inventory/list.jsp";
			break;
		case "detail" :
			req.setAttribute("ivo", isv.getDetail(
					Integer.parseInt(req.getParameter("iid"))
					));
			destPage = "/inventory/detail.jsp";
			break;
		case "mod" :
			System.out.println(req.getParameter("iid"));
			req.setAttribute("ivo", isv.getDetail(
					Integer.parseInt(req.getParameter("iid"))
					));
			destPage = "/inventory/modify.jsp";
			break;
		case "modify" :
			isUp = isv.modify(new InventoryVO(
					Integer.parseInt(req.getParameter("iid")),
					req.getParameter("serial"),
					Integer.parseInt(req.getParameter("classifi")),
					Integer.parseInt(req.getParameter("vendor")),
					req.getParameter("model"),
					req.getParameter("naming"),
					Integer.parseInt(req.getParameter("pid"))
					));
			log.info(">>> InventoryCTLR > Modify : {}", isUp > 0 ? "Success" : "Failed");
			destPage = "detail?iid=" + Integer.parseInt(req.getParameter("iid"));
			break;
		case "create" :
			int newClassifi = Integer.parseInt(req.getParameter("classifi"));
			int newVendor = Integer.parseInt(req.getParameter("vendor"));
			isUp = isv.create(new InventoryVO(
					req.getParameter("serial"),
					newClassifi,
					newVendor,
					req.getParameter("model"),
					req.getParameter("naming"),
					req.getParameter("writer"),
					Integer.parseInt(req.getParameter("pid"))
					));
			log.info(">>> InventoryCTLR > Create : {}", isUp > 0 ? "Success" : "Failed");
			destPage = "/invt/list?classifi=" + newClassifi + "&vendor=" + newVendor;
			break;
		case "remove" :
			int delClassifi = Integer.parseInt(req.getParameter("classifi"));
			int delVendor = Integer.parseInt(req.getParameter("vendor"));
			isUp = isv.remove(new InventoryVO(
					Integer.parseInt(req.getParameter("iid")),
					req.getParameter("reason"),
					req.getParameter("name")
					));
			log.info(">>> InventoryCTLR > Remove : {}", isUp > 0 ? "Success" : "Failed");
			destPage = "/invt/list?classifi=" + delClassifi + "&vendor=" + delVendor;
			break;

		default:
			break;
		}
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
