
<%@ page import="com.onb.SchoolRegistrationSystem.Section" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-section" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="section.enrollment.label" default="Enrollment" /></th>
					
						<th><g:message code="section.subject.label" default="Subject" /></th>
					
						<th><g:message code="section.teacher.label" default="Teacher" /></th>
					
						<th><g:message code="section.timeSlot.label" default="Time Slot" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sectionInstanceList}" status="i" var="sectionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sectionInstance.id}">${fieldValue(bean: sectionInstance, field: "enrollment")}</g:link></td>
					
						<td>${fieldValue(bean: sectionInstance, field: "subject")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "teacher")}</td>
					
						<td>${fieldValue(bean: sectionInstance, field: "timeSlot")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sectionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
