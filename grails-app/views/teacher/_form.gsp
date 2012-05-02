<%@ page import="com.onb.SchoolRegistrationSystem.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="teacher.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" maxlength="8" required="" value="${teacherInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${teacherInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${teacherInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="teacher.sections.label" default="Sections" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teacherInstance?.sections?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['teacher.id': teacherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

