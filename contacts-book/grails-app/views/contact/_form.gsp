<div class="mb-3">
    <label class="form-label" ><g:message code="contact.name" /> * </label>
    <g:textField  name="name" class="form-control" value="${contact?.name}" placeholder="Enter Contact Name..." autocomplete="off" />
    <UIHelper:renderErrorMessage fieldName="contactName" model="${contact}" errorMessage="please.enter.name" />
</div>

<div class="mb-3">
    <label class="form-label" ><g:message code="image" />  </label>
    <g:field name="contactImage" class="form-control" type="file" placeholder="Please Upload Image..."/>
    <g:if test="${contact?.image}">
        <img src="${resource(dir: "contact-image", file: "/${contact.id}-${contact.image}")}" class="img-thumbnail" style="width:100px"/>
    </g:if>

</div>

<div class="mb-3">
    <label class="form-label"><g:message code="contact.group.name"/></label>
    <UIHelper:contactGroup value="${contact?.contactGroup*.id}" />
</div>

<div class="details-panel mb-3">
    <g:include controller="contactDetails" action="create" id="${contact?.id}" />
</div>

