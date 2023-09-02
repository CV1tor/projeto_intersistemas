<div class="mb-3">
    <label class="form-label" for="firstName"><g:message code="first.name" /> * </label>
    <g:textField  name="firstName" class="form-control" value="${member?.firstName}" placeholder="Enter First Name..." autocomplete="off" />
    <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="please.enter.name" />
</div>

<div class="mb-3">
    <label class="form-label" for="lastName"><g:message code="last.name" /> </label>
    <g:textField  name="lastName" class="form-control" value="${member?.lastName}" placeholder="Enter Last Name..." autocomplete="off" />
    
</div>

<div class="mb-3">

    <label class="form-label" for="email"><g:message code="email.adress" /> * </label>
    <g:field  type="email" name="email" class="form-control" value="${member?.email}" placeholder="Enter Email..." autocomplete="off" />
    <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="please.enter.email" />
</div>



<g:if test="${!edit}">
    <div class="mb-3">
        <label class="form-label" for="password"><g:message code="password" /> * </label>
        <g:passwordField  name="password" class="form-control" value="${member?.password}" placeholder="Enter Password..." autocomplete="off"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="please.enter.password" />
    </div>
</g:if>

