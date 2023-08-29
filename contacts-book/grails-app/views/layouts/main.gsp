<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
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
