<meta name="layout" content="main" />


<div class="card">

    <div class="card-header">
        <g:message code="contact" args="['Create']" />
    </div>

    <div class="card-body">
        <g:form controller="contact" action="update" >
            <g:hiddenField name="id" value="${contact.id}"/>
            <g:render template="form"/>
            <div class="row g-3">
                <div class="m-3">
                    <g:submitButton class="btn btn-primary" name="save" value="${g.message(code:"save")}" />
                    <g:link controller="contact" action="index" class="btn btn-primary"> <g:message code="cancel" /> </g:link>
                </div>
            </div>
        </g:form>
    </div>