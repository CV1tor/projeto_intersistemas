<meta name="layout" content="main" />


<div class="card">

    <div class="card-header">
        <g:message code="contact" args="['Details']" />
    </div>

    <div class="card-body">
        <g:if test="${contact}">
            <div class="d-flex">
                <div class="card" style="max-width: 300px">
                    <g:if test="${contact.image}">
                        <img src="${resource(dir: "contact-image", file: "/${contact.id}-${contact.image}")}" class="card-img-top"/>
                    </g:if>
                    <g:else>
                        <g:img dir="images" file="placeholder.jpg" class="card-img-top" />
                    </g:else>
                    <div class="card-body">
                        <p class="card-text">
                            <strong>Name:</strong> ${contact.name}
                            <g:if test="${contact.contactGroup}">
                                <br><strong>Group: </strong>
                                <g:each in="${contact.contactGroup}" var="group">
                                    ${group.name},
                                </g:each>
                            </g:if>
                        </p>
                    </div>
                </div>
                        </g:if>
                
                        <g:if test="${contact.contactDetails}">
                        <div class="ml-3 d-flex flex-wrap">
                            <g:each in="${contact.contactDetails}" var="details">
                                <div >
                                    <div class="card ml-3" >
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"><strong>Contact Type:</strong> ${details.type}</li>
                                            <li class="list-group-item"><strong>Mobile:</strong> ${details.mobile}</li>
                                            <li class="list-group-item"><strong>Phone:</strong> ${details.phone}</li>
                                            <li class="list-group-item"><strong>Email Address:</strong> ${details.email}</li>
                                            <li class="list-group-item"><strong>Web:</strong> ${details.website}</li>
                                            <li class="list-group-item"><strong>Address:</strong> ${details.address}</li>
                                        </ul>
                                    </div>
                                </div>
                            </g:each>
                        </div>
                         </g:if>
            </div>
        
        <g:link controller="contact" action="index" class="btn btn-primary mt-3"> <g:message code="cancel" /> </g:link>
    </div>
    
</div>
