<meta name="layout" content="public"/>


    <div class="card login">
        <div class="card-header">
            <h1 class="text-center"> Contacts Book Member Login </h1> 
        </div>
        <div class="card-body">
            <g:img dir="images" file="notebook.svg" class="login-img" />
            <g:form controller="authentication" action="doLogin">
                <g:textField name="email" class="form-control " placeholder="Email..." required="required" />
                 <g:passwordField name="password" class="form-control " placeholder="Password..." required="required" />
                 <g:submitButton class="btn btn-primary btn-block btn-lg mt-3" name="login" value="Login" />
                 <g:link controller="authentication" action="registration" class="btn btn-primary btn-block btn-lg " name="registration"><g:message code="registration" /></g:link>
            </g:form>
            
        </div>
    </div>
