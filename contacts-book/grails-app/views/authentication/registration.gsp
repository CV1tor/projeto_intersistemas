<meta name="layout" content="public"/>

<div class="card">
    
        <div class="card">
            <div class="card-header">
                <g:message code="member" args="['Registration']" />
            </div>
        <div class="card-body">
            <g:form controller="authentication" action="doRegistration" >
    
                <g:render template="/member/form"/>
                <div class="row g-3">
                    <div class="m-3">
                        <g:submitButton class="btn btn-primary" name="registration" value="${g.message(code:"registration")}" />
                        <g:link controller="authentication" action="login" class="btn btn-primary"> <g:message code="back.to.login" /> </g:link>
                    </div>
                </div>
            </g:form>
        </div>
</div>
