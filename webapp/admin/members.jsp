<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <h2>계정 목록</h2>
  
  <div class="d-flex justify-content-between mt-4 mt-5">
    <div class="btn-group btn-group-mg">
    </div>
      <a type="submit" class="btn btn-success" style="width: 85px" href="#">등록</a>
  </div>

  <div class="list-group mt-4">
    <c:forEach var="avo" items="${mList }">
    <div class="row" style="position: relative;">
      <a href="#" class="text-decoration-none mt-1" >
        <div class="list-group list-group-horizontal">
        
          <div class="form-floating col-2">
            <div type="text" class="form-control">${avo.account }</div>
            <label>아이디</label>
          </div>
          
          <div class="form-floating col-3">
            <div type="text" class="form-control">${avo.name }</div>
            <label>이름</label>
          </div>
          
          <div class="form-floating col-2">
            <div type="text" class="form-control">${avo.grade_name }</div>
            <label>권한</label>
          </div>

          <div class="form-floating col-5" style="width: 35%;">
            <div class="form-control">${avo.last_at }</div>
            <label>마지막 접속 시간</label>
          </div>
        
        </div>
      </a>
      <div style="position: absolute; left: 91.8%; top: 50%; transform: translate(0, -50%);">
        <form>
          <input type="text" value="${ivo.iid }" name="iid" hidden>
          <button type="submit" formaction="/invt/mod" class="btn btn-outline-warning" style="width: 40px;"><i class="bi bi-pencil-fill"></i></button>
          <button type="button" class="btn btn-outline-danger" style="width: 40px;" onclick="show_modal_window('${ivo.iid }', '${ivo.classifi }', ${ivo.vendor }', '/invt/remove')"><i class="bi bi-trash3"></i></button>
        </form>
      </div>
    </div>
    </c:forEach>
  </div>

<jsp:include page="../footer.jsp"/>