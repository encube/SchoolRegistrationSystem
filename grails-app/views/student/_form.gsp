<%@ page import="com.onb.SchoolRegistrationSystem.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="student.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" maxlength="8" required="" value="${studentInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="student.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${studentInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="student.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${studentInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="student.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="level" from="${1..4}" class="range" required="" value="${fieldValue(bean: studentInstance, field: 'level')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="student.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${studentInstance?.registrationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="student.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${com.onb.SchoolRegistrationSystem.Course.list()}" optionKey="id" required="" value="${studentInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="student.enrollments.label" default="Enrollments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.enrollments?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

