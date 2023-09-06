<meta name="layout" content="main" />


<div class="card">

    <div class="card-header">
        <g:message code="contact.group" args="['Details']" />
    </div>

    <div class="card-body">
        <g:if test="${contactGroup}">
            <table class="table">
                <tr>
                    <th scope="row" class="text-right"><g:message code="name" /></th>
                    <td>${contactGroup.name}</td>
                <tr>
            </table>
        </g:if>
        <g:link controller="contactGroup" action="index" class="btn btn-primary"> <g:message code="cancel" /> </g:link>
    </div>

</div>
