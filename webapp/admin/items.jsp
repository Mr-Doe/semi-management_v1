<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <h2>삭제 재고 목록</h2>

  <div class="list-group mt-4">
    <c:forEach var="ivo" items="${aList }">
    <div class="row" style="position: relative;">
      <a href="/invt/detail?iid=${ivo.iid }" class="text-decoration-none mt-1" >
        <div class="list-group list-group-horizontal">
        
          <div class="form-floating col-2">
            <div type="text" class="form-control">${ivo.mod_at }</div>
            <label>삭제 시간</label>
          </div>
          
          <div class="form-floating col-3">
            <div type="text" class="form-control">${ivo.serial }</div>
            <label>재고 번호</label>
          </div>
          
          <div class="form-floating col-2">
            <div type="text" class="form-control">${ivo.writer }</div>
            <label>마지막 수정</label>
          </div>

          <div class="form-floating col-5" style="width: 35%;">
            <div class="form-control">${ivo.reason }</div>
            <label>삭제 사유</label>
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
  
</div>

<jsp:include page="../footer.jsp"/>