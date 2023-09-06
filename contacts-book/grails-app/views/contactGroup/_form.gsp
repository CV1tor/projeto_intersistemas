<div class="mb-3">
    <label class="form-label" ><g:message code="contact.group.name" /> * </label>
    <g:textField  name="name" class="form-control" value="${contactGroup?.name}" placeholder="Enter Contact Group Name..." autocomplete="off" />
    <UIHelper:renderErrorMessage fieldName="contactGroupName" model="${contactGroup}" errorMessage="please.enter.name" />
</div>



