package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mysql.cj.protocol.a.NativeConstants.IntegerDataType;

import domain.AccountVO;
import domain.ClassifiVO;
import domain.InventoryVO;
import domain.PartnerVO;
import domain.VendorVO;
import service.AsyncService;
import service.AsyncServiceImpl;
import service.InventoryService;
import service.InventoryServiceImpl;

@WebServlet("/syn/*")
public class AsyncCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger log = LoggerFactory.getLogger(AsyncCtrl.class);
	private AsyncService asv;
	private InventoryService isv;
	private int isUp;
	private JSONObject[] jsonObj;
	private JSONArray jsonList;
	private String jsonData;
	private PrintWriter out;
       
    public AsyncCtrl() {
    	asv = new AsyncServiceImpl();
    	isv = new InventoryServiceImpl();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");

		String uri = req.getRequestURI();
		String path = uri.substring("/syn/".length());

		String pathVar = "";
		String pathVar2 = "";
		if (path.contains("/")) {
			pathVar = path.substring(path.lastIndexOf("/") + 1);
			path = path.substring(0, path.lastIndexOf("/"));
		}
		if (path.contains("/")) {
			pathVar2 = path.substring(path.lastIndexOf("/") + 1);
			path = path.substring(0, path.lastIndexOf("/"));
		}
		if(pathVar.contains("%20")) {
			pathVar = pathVar.replace("%20", " ");
		}
		log.info(">>> AsyncCtrl PATH : {}", path);
		log.info(">>> AsyncCtrl pathVal : {}", pathVar);
		log.info(">>> AsyncCtrl pathVal2 : {}", pathVar2);
		
		switch (path) {
		case "classifi" :
			List<ClassifiVO> classList = asv.classList();
			jsonObj = new JSONObject[classList.size()];
			jsonList = new JSONArray();

			for (int i = 0; i < classList.size(); i++) {
				jsonObj[i] = new JSONObject();
				jsonObj[i].put("classifi", classList.get(i).getClassifi());
				jsonObj[i].put("e_name", classList.get(i).getE_name());
				jsonObj[i].put("k_name", classList.get(i).getK_name());

				jsonList.add(jsonObj[i]);
			}
			jsonData = jsonList.toJSONString();

			out = res.getWriter();
			out.print(jsonData);
			break;
		case "vendor" :
			List<VendorVO> vendorList = asv.vendorList(Integer.parseInt(pathVar));
			jsonObj = new JSONObject[vendorList.size()];
			jsonList = new JSONArray();

			for (int i = 0; i < vendorList.size(); i++) {
				jsonObj[i] = new JSONObject();
				jsonObj[i].put("vendor", vendorList.get(i).getVendor());
				jsonObj[i].put("vendor_name", vendorList.get(i).getVendor_name());
				jsonObj[i].put("classifi", vendorList.get(i).getClassifi());

				jsonList.add(jsonObj[i]);
			}
			jsonData = jsonList.toJSONString();

			out = res.getWriter();
			out.print(jsonData);
			break;
		case "auto" :
			List<PartnerVO> autocompList = asv.autocompList(pathVar);
			jsonObj = new JSONObject[autocompList.size()];
			jsonList = new JSONArray();

			for (int i = 0; i < autocompList.size(); i++) {
				jsonObj[i] = new JSONObject();
				jsonObj[i].put("pid", autocompList.get(i).getPid());
				jsonObj[i].put("pnr_name", autocompList.get(i).getPnr_name());

				jsonList.add(jsonObj[i]);
			}
			jsonData = jsonList.toJSONString();

			out = res.getWriter();
			out.print(jsonData);
			break;
		case "invtlist" :
			List<InventoryVO> inventoryList = isv.getList(Integer.parseInt(pathVar2), Integer.parseInt(pathVar));
			jsonObj = new JSONObject[inventoryList.size()];
			jsonList = new JSONArray();

			for (int i = 0; i < inventoryList.size(); i++) {
				jsonObj[i] = new JSONObject();
				jsonObj[i].put("iid", inventoryList.get(i).getIid());
				jsonObj[i].put("serial", inventoryList.get(i).getSerial());
				jsonObj[i].put("classifi", inventoryList.get(i).getClassifi());
				jsonObj[i].put("vendor", inventoryList.get(i).getVendor());
				jsonObj[i].put("naming", inventoryList.get(i).getNaming());
				jsonObj[i].put("pid", inventoryList.get(i).getPid());
				jsonObj[i].put("mod_at", inventoryList.get(i).getMod_at());
				jsonObj[i].put("reason", inventoryList.get(i).getReason());
				jsonObj[i].put("pnr_name", inventoryList.get(i).getPnr_name());
				jsonObj[i].put("addr", inventoryList.get(i).getAddr());

				jsonList.add(jsonObj[i]);
			}
			jsonData = jsonList.toJSONString();

			out = res.getWriter();
			out.print(jsonData);
			break;
		case "member" :
			List<AccountVO> accountList = asv.accountList(pathVar);
			jsonObj = new JSONObject[accountList.size()];
			jsonList = new JSONArray();

			for (int i = 0; i < accountList.size(); i++) {
				jsonObj[i] = new JSONObject();
				jsonObj[i].put("uid", accountList.get(i).getUid());
				jsonObj[i].put("name", accountList.get(i).getName());

				jsonList.add(jsonObj[i]);
			}
			jsonData = jsonList.toJSONString();

			out = res.getWriter();
			out.print(jsonData);
			break;

		default:
			break;
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
