<%@ page import="com.onb.SchoolRegistrationSystem.Room" %>



<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="room.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" maxlength="8" required="" value="${roomInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'building', 'error')} required">
	<label for="building">
		<g:message code="room.building.label" default="Building" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="building" required="" value="${roomInstance?.building}"/>
</div>

