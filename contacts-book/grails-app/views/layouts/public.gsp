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
    <asset:javascript src="application.js"/>

    <script type="text/javascript">
      <g:if test="${flash?.message && flash?.message?.info}">
        jQuery(document).ready(function() {
          OCB.messageBox.showMessage(Boolean(${flash.message?.success}), "${flash.message?.info}");
        });
      </g:if>
    </script>
    <g:layoutHead/>
</head>

<body>


<header>
  <nav class="navbar navbar-dark bg-dark navbar-expand-lg fixed-top">
    <div class="container-fluid">

      <span class="navbar-brand mb-0 h1">Online Contacts Book</span>

      
    </div>
  </nav>
</header>

<main>


  
  <div class="login-container">
    <g:layoutBody/>
  </div>
</main>


</body>
</html>
