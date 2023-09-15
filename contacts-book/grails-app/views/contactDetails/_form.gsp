<div class="mb-3">
    <div class="row">
        <g:if test="${details}">
                <div class="mr-3">
                    <g:hiddenField name="detailsId" value="${details.id}" />
                </div>
        </g:if>


        <div class="mr-3">
            <UIHelper:contactTypes value="${details?.type}" />
        </div>

        <div class="mr-3">
           <g:textField name="mobile" class="form-control" placeholder="Mobile Number" value="${details?.mobile}" />

        </div>

        <div class="mr-3">
            <g:textField name="phone" class="form-control" placeholder="Phone Number" value="${details?.phone}" />
        </div>

        <div class="mr-3">
            <g:textField name="email" class="form-control" placeholder="Email" value="${details?.email}" />
        </div>

        <div class="mr-3">
            <g:textField name="website" class="form-control" placeholder="Website" value="${details?.website}" />
        </div>

        <div class="mr-3">
            <g:textField name="address" class="form-control" placeholder="Address" value="${details?.address}" />
        </div>

        <div >
            <g:if test="${details}">
                <button type="button" data-id="${details?.id}" class="btn btn-danger remove-number"><i class="fas fa-trash"></i></button>
            </g:if>
            <g:else>
                <button type="button" class="btn btn-primary add-new-number"><i class="fas fa-plus-circle"></i></button>
            </g:else>
        </div>
    </div>

</div>
