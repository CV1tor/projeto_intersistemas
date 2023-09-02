<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <script src="https://kit.fontawesome.com/a046330ba8.js" crossorigin="anonymous"></script>
    <title>
        <g:layoutTitle default="Contacts Book"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>


<header>
  <nav class="navbar navbar-dark bg-dark navbar-expand-lg fixed-top">
    <div class="container-fluid">

      <span class="navbar-brand mb-0 h1">Navbar</span>

      <g:form class="d-flex float-end"  controller="member" action="index" method="GET">

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
  </nav>
</header>

<main>
  <aside>
    <div class="sidebar container-fluid ">

      <nav class="nav flex-column">
        <a class="nav-link active" aria-current="page" href="#">Contacts</a>
        <a class="nav-link" href="#">About</a>
        <a class="nav-link" href="#">Info</a>
      </nav>

    </div>
  </aside>
  
  <div class="content">
    <g:layoutBody/>
  </div>
</main>

<asset:javascript src="application.js"/>

</body>
</html>
