
<%@ page import="sheepfy.UserSheep" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userSheep.label', default: 'UserSheep')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userSheep" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userSheep" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'userSheep.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="login" title="${message(code: 'userSheep.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'userSheep.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'userSheep.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'userSheep.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userSheepInstanceList}" status="i" var="userSheepInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userSheepInstance.id}">${fieldValue(bean: userSheepInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: userSheepInstance, field: "login")}</td>
					
						<td>${fieldValue(bean: userSheepInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: userSheepInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: userSheepInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userSheepInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
