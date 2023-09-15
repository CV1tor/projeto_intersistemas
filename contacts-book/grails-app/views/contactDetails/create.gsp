
<div class="mb-3">
    <g:each in="${contactDetails}" var="details" >
        <g:render template="form" model="[details: details]" />
    </g:each>

    <g:render template="form" />

</div>


