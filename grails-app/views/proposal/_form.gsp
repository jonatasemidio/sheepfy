<%@ page import="sheepfy.Proposal" %>



<div class="fieldcontain ${hasErrors(bean: proposalInstance, field: 'numberOfDesiredBuyers', 'error')} required">
	<label for="numberOfDesiredBuyers">
		<g:message code="proposal.numberOfDesiredBuyers.label" default="Number Of Desired Buyers" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfDesiredBuyers" type="number" value="${proposalInstance.numberOfDesiredBuyers}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: proposalInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="proposal.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: proposalInstance, field: 'price')}" required=""/>
</div>

