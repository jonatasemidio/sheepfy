
<%@ page import="sheepfy.Proposal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proposal.label', default: 'Proposal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-proposal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-proposal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list proposal">
			
				<g:if test="${proposalInstance?.numberOfDesiredBuyers}">
				<li class="fieldcontain">
					<span id="numberOfDesiredBuyers-label" class="property-label"><g:message code="proposal.numberOfDesiredBuyers.label" default="Number Of Desired Buyers" /></span>
					
						<span class="property-value" aria-labelledby="numberOfDesiredBuyers-label"><g:fieldValue bean="${proposalInstance}" field="numberOfDesiredBuyers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proposalInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="proposal.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${proposalInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${proposalInstance?.id}" />
					<g:link class="edit" action="edit" id="${proposalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
