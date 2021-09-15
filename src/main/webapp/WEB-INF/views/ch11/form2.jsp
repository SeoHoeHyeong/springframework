<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<div class="card m-2">
	<div class="card-header">DTO 객체의 필드값 양식의 드롭다운리스트(select 태그)로 세팅</div>
	<div class="card-body">

		<form method="post" action="form2">
			<%-- <div>
				<label for=mtype>Type</label>
				<select class="form-control" id="mtype" name="mtype">
					<c:forEach var="type" items="${typeList}">
						<option value="${type}" 
							<c:if test="${member.mtype == type}">selected</c:if>
						>${type}</option>
					</c:forEach>
				</select>
			</div> --%>
			
			<div>
				<label for=mtype>Type</label>
				<select class="form-control" id="mtype" name="mtype">
					<option value="">----선택----</option>
					<c:forEach var="type" items="${typeList}">
						<option value="${type}" 
							<c:if test="${member.mtype == type}">selected</c:if>
						>${type}</option>
					</c:forEach>
				</select>
			</div>
			
			<div>
				<label for=mcity>City</label>
				<select class="form-control" id="mcity" name="mcity">
					<option value="">----선택----</option>
					<c:forEach var="city" items="${cityList}">
						<option value="${city.code}" 
							<c:if test="${member.mcity == city.code}">selected</c:if>
						>${city.label}</option>
					</c:forEach>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">제출</button>
		</form>
		
		<%-- Springframework --%>
		<form:form method="post" action="form2" modelAttribute="member">
			<div class="form-group">
				<label for="mtype">Type</label>
				<form:select path="mtype" class="form-control">
					<option value="">----선택----</option>
					<form:options items="${typeList }"/>
				</form:select>
			</div>
			
			<div class="form-group">
				<label for="mcity">City</label>
				<form:select class="form-control" path="mcity" items="${cityList}" itemLabel="label" itemValue="code"></form:select>
			</div>
			
			<button type="submit" class="btn btn-primary">제출</button>
		</form:form>
		
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
