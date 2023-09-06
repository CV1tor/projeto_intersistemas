<meta name="layout" content="main" />

<div class="card">
    <div class="card-header">

        <g:message code="contact" args="['List']" />

        <g:form class="d-flex float-right col-6"   controller="contact" action="index" method="GET">

            <span class="input-group d-flex m-2">
                <g:select name="colName" class="form-control" from="[name: 'Name']" value="${params?.colName}" optionKey="key" optionValue="value" />
                <g:textField name="colValue" class="form-control" type="search" value="${params?.colValue}" placeholder="Search" />
                <button class="btn btn-secondary " type="submit">Search</button>
            </span>

             <div class="btn-group d-flex m-2">
                <g:link controller="contact" action="create" class="btn btn-success"> <g:message code="create" /> </g:link>
                <g:link controller="contact" action="index" class="btn btn-primary"> <g:message code="reload" /> </g:link>
            </div>
        </g:form >
       

    </div>

    <div class="card-body">
        <table class="table table-bordered  table-striped">
            <thead class="table-dark">
                <tr>
                    <th width="150px" class="img-cell" ><g:message code="image" /> </th>
                    <g:sortableColumn property="name" title="${g.message(code:"name")}" />
                    <th class="action-col" scope="col"><g:message code="action"/></th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${contactList}" var="contact">
                    <tr>
                        <td class="img-cell">
                            <g:if test="${contact.image}">
                                <img src="${resource(dir: "contact-image", file: "/${contact.id}-${contact.image}")}" class="img-thumbnail" style="width: 100%"/>
                            </g:if>

                            <g:else>
                                <g:img dir="images" file="placeholder.jpg" class="img-thumbnail" style="width: 100%"/>
                            </g:else>

                        </td>
                        <td>${contact?.name}</td>
    
                        <td class="member-actions">
                            <div class="btn-group ">
                                <g:link class ="btn btn-primary" controller="contact" action="details" id="${contact.id}"><i class="fa-solid fa-eye"></i></g:link>
                                <g:link class ="btn btn-primary" controller="contact" action="edit" id="${contact.id}"><i class="fa-solid fa-pen-to-square"></i></g:link>
                                <g:link class ="btn btn-danger delete-confirmation" controller="contact" action="delete" id="${contact.id}"><i class="fa-solid fa-trash"></i></g:link>
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