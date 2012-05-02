<%@ page import="com.onb.SchoolRegistrationSystem.Section" %>



<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'maxStudent', 'error')} required">
	<label for="maxStudent">
		<g:message code="section.maxStudent.label" default="Max Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="maxStudent" from="${0..30}" class="range" required="" value="${fieldValue(bean: sectionInstance, field: 'maxStudent')}"/>
</div>

