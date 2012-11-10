
<%@ page import="sheepfy.UserSheep" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userSheep.label', default: 'UserSheep')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userSheep" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userSheep" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userSheep">
			
				<g:if test="${userSheepInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="userSheep.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userSheepInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userSheepInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="userSheep.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${userSheepInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userSheepInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="userSheep.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userSheepInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userSheepInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="userSheep.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userSheepInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userSheepInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="userSheep.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${userSheepInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userSheepInstance?.id}" />
					<g:link class="edit" action="edit" id="${userSheepInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
