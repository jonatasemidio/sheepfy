<%@ page import="sheepfy.UserSheep" %>



<div class="fieldcontain ${hasErrors(bean: userSheepInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="userSheep.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userSheepInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSheepInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="userSheep.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${userSheepInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSheepInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="userSheep.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userSheepInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSheepInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="userSheep.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${userSheepInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userSheepInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="userSheep.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${userSheepInstance.constraints.type.inList}" required="" value="${userSheepInstance?.type}" valueMessagePrefix="userSheep.type"/>
</div>

