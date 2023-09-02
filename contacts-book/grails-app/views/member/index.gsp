<meta name="layout" content="main" />

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['List of']" />
    </div>

    <div class="card-body">
        <table class="table table-bordered  table-striped">
            <thead class="table-dark">
                <tr>
                    <g:sortableColumn property="firstName" title="${g.message(code:"first.name")}" />
                    <g:sortableColumn property="lastName" title="${g.message(code:"last.name")}" />
                    <g:sortableColumn property="email" title="${g.message(code:"email")}" />
                    <th class="action-col" scope="col"><g:message code="action"/></th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${memberList}" var="info">
                    <tr>
                        <td>${info?.firstName}</td>
                        <td>${info?.lastName}</td>
                        <td>${info?.email}</td>
                        <td>
                            <div class="btn-group">
                                <g:link class ="btn btn-primary" controller="member" action="details" id="${info.id}"><i class="fa-solid fa-eye"></i></g:link>
                                <g:link class ="btn btn-primary" controller="member" action="edit" id="${info.id}"><i class="fa-solid fa-pen-to-square"></i></g:link>
                                <g:link class ="btn btn-danger" controller="member" action="delete" id="${info.id}"><i class="fa-solid fa-trash"></i></g:link>
                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>