<meta name="layout" content="main" />

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['List']" />


        <div class="btn-group d-flex m-2 float-right">
          <g:link controller="contactGroup" action="create" class="btn btn-success"> <g:message code="create" /> </g:link>
          <g:link controller="contactGroup" action="index" class="btn btn-primary"> <g:message code="reload" /> </g:link>
        </div>


    </div>

    <div class="card-body">
        <table class="table table-bordered  table-striped">
            <thead class="table-dark">
                <tr>
                    <g:sortableColumn property="name" title="${g.message(code:"name")}" />
                    <th class="action-col" scope="col"><g:message code="action"/></th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${contactGroups}" var="group">
                    <tr>
                        <td>${group?.name}</td>
                        
                        <td class="member-actions">
                            <div class="btn-group ">
                                <g:link class ="btn btn-primary" controller="contactGroup" action="details" id="${group.id}"><i class="fa-solid fa-eye"></i></g:link>
                                <g:link class ="btn btn-primary" controller="contactGroup" action="edit" id="${group.id}"><i class="fa-solid fa-pen-to-square"></i></g:link>
                                <g:link class ="btn btn-danger delete-confirmation" controller="contactGroup" action="delete" id="${group.id}"><i class="fa-solid fa-trash"></i></g:link>
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