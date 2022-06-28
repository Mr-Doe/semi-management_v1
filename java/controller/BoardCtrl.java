package controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.logging.FileHandler;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import net.coobird.thumbnailator.Thumbnails;
import service.BoardService;
import service.BoardServiceImpl;

@WebServlet("/bod/*")
public class BoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(BoardCtrl.class);
	private final String UTF8 = "utf-8";
	private RequestDispatcher rdp;
	private int isUp;
	private String destPage;
	private BoardService bsv;
	private String savePath = getServletContext().getRealPath("/_fileUpload");

    public BoardCtrl() {
    	bsv = new BoardServiceImpl();
    }

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");

		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> PATH : {}", path);

		switch(path) {
		case "new" :
			destPage = "/board/create.jsp";
			break;
		case "create" :
			try {
			File fileDir = new File(savePath);

			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(fileDir);
			fileItemFactory.setSizeThreshold(2*1024*1024); // 저장을 위한 임시 메모리 저장용량 : byte단위

			BoardVO bvo = new BoardVO();
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);


			List<FileItem> itemList = fileUpload.parseRequest(req);
			for (FileItem item : itemList) {
				switch (item.getFieldName()) {
				case "title" :
					bvo.setTitle(item.getString(UTF8));
					break;
				case "price" :
					bvo.setPrice(Integer.parseInt(item.getString(UTF8)));
					break;
				case "made_by" :
					bvo.setMade_by(item.getString(UTF8));
				case "writer" :
					bvo.setWriter(item.getString(UTF8));
					break;
				case "category" :
					bvo.setCategory(item.getString(UTF8));
					break;
				case "description" :
					bvo.setDescription(item.getString(UTF8));
					break;
				case "imageFile" :
					if (item.getSize() > 0) {
						// 경로가 포함된 전체 이름
						String fileName = item.getName()
								.substring(item.getName().lastIndexOf(File.separator)+1);

						// 실제 저장될 path로 파일을 객체화
						fileName = System.currentTimeMillis() + "_" + fileName;
						File uploadFilePath = new File(fileDir + File.separator + fileName);

						try {
							item.write(uploadFilePath); // 자바객체를 디스크에 쓰기
							bvo.setImage_file(fileName);

							// 썸네일 작업
							Thumbnails.of(uploadFilePath)
							.size(75, 75)
							.toFile(new File(fileDir + File.separator + "th_" + fileName));
						} catch (Exception e) {
							log.info(">>> File Write on disk Failed");
							e.printStackTrace();
						}

					}
					isUp = bsv.create(bvo);
					log.info(">>> BoardCtrl > Create > {}", isUp > 0 ? "Success" : "Failed");
					destPage = "list";
					break;
				default :
					break;
				}
			}

			} catch (FileUploadException e) {
				e.printStackTrace();
			}

			break;
		case "list" :
			req.setAttribute("bList", bsv.getList());
			destPage = "/board/list.jsp";
			break;
		case "one" :
			req.setAttribute("pdDetail", bsv.detail(
					Long.parseLong(req.getParameter("bno"))
					));
			destPage = "/board/detail.jsp";
			break;
		case "detail" :
			destPage = "/board/detail.jsp";
			break;
		case "modify" :
			isUp = bsv.modify(new BoardVO(
					Long.parseLong(req.getParameter("bno")),
					req.getParameter("title"),
					Integer.parseInt(req.getParameter("price")),
					req.getParameter("made_by"),
					req.getParameter("category")
					));
			log.info(">>> Modify > {}", isUp > 0 ? "Succeed" : "Failed");
			req.setAttribute("msg_pdMod", isUp);
			destPage = "list";
			break;
		case "update" :

			File fileDir = new File(savePath);

			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(fileDir);
			fileItemFactory.setSizeThreshold(2*1024*1024); // 저장을 위한 임시 메모리 저장용량 : byte단위

			BoardVO bvo = new BoardVO();
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);


			try {
				List<FileItem> itemList = fileUpload.parseRequest(req);

				String old_file = null;
				for (FileItem item : itemList) {
					switch (item.getFieldName()) {
					case "bno" :
						bvo.setBno(Integer.parseInt(item.getString(UTF8)));
						break;
					case "title" :
						bvo.setTitle(item.getString(UTF8));
						break;
					case "price" :
						bvo.setPrice(Integer.parseInt(item.getString(UTF8)));
						break;
					case "made_by" :
						bvo.setMade_by(item.getString(UTF8));
					case "writer" :
						bvo.setWriter(item.getString(UTF8));
						break;
					case "category" :
						bvo.setCategory(item.getString(UTF8));
						break;
					case "description" :
						bvo.setDescription(item.getString(UTF8));
						break;
					case "image_file" :
						old_file = item.getString(UTF8);
						break;
					case "new_file" :
						if (item.getSize() > 0) {

							if (old_file != null) {
								FileHandler fileHandler = new FileHandler();
								isUp = fileHandler.deleteFile(old_file, savePath);
							}
							// 경로가 포함된 전체 이름
							String fileName = item.getName()
									.substring(item.getName().lastIndexOf(File.separator)+1);

							// 실제 저장될 path로 파일을 객체화
							fileName = System.currentTimeMillis() + "_" + fileName;
							File uploadFilePath = new File(fileDir + File.separator + fileName);

							try {
								item.write(uploadFilePath); // 자바객체를 디스크에 쓰기
								bvo.setImage_file(fileName);

								// 썸네일 작업
								Thumbnails.of(uploadFilePath)
								.size(75, 75)
								.toFile(new File(fileDir + File.separator + "th_" + fileName));
							} catch (Exception e) {
								log.info(">>> File Write on disk Failed");
								e.printStackTrace();
							}

						}else {
							bvo.setImage_file(old_file);
						}
						isUp = bsv.modify(bvo);
						log.info(">>> BoardCtrl > Update : {}", isUp > 0 ? "Succeed" : "Failed");
						req.setAttribute("detail?bno=", bvo.getBno());
						break;
					default :
						break;
					}
				}
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (FileUploadException e) {
				e.printStackTrace();
			}

			break;
		case "remove" :

			Long bno = Long.parseLong(req.getParameter("bno"));
			String imageFileName = bsv.getFileName(bno);

			FileHandler fileHandler = new FileHandler();

			isUp = fileHandler.deleteFile(imageFileName, savePath);
			isUp = bsv.remove(Long.parseLong(
					req.getParameter("bno")
					));
			log.info(">>> Remove > {}", isUp > 0 ? "Succeed" : "Failed");
			destPage = "list";
			break;

		default :
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
