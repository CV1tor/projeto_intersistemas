<meta name="layout" content="main" />

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['List']" />

        <g:form class="d-flex float-right col-6"   controller="member" action="index" method="GET">

        <span class="input-group d-flex m-2">
          <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name', email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value" />
          <g:textField name="colValue" class="form-control" type="search" value="${params?.colValue}" placeholder="Search" />
          <button class="btn btn-secondary " type="submit">Search</button>
        </span>

        <div class="btn-group d-flex m-2">
          <g:link controller="member" action="create" class="btn btn-success"> <g:message code="create" /> </g:link>
          <g:link controller="member" action="index" class="btn btn-primary"> <g:message code="reload" /> </g:link>
        </div>

      </g:form>


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
                                <g:link class ="btn btn-danger delete-confirmation" controller="member" action="delete" id="${info.id}"><i class="fa-solid fa-trash"></i></g:link>
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