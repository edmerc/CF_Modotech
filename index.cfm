<!DOCTYPE html>
<html lang="en">

<cfset ormreload()/>

<!--- get user --->
<cfset user = entityLoad( "users", session.userID )>

<cfloop array="#user#" index="x">
	<cfset userName = x.getUserName()/>
    <cfset userID 	= x.getID()/>
</cfloop>

<cfparam name="url.p" default="home"/>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ed Mercado - Modotech Coding Challenge</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->	
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="?p=home">
                        Billing Entry App
                    </a>
                </li>
                <li>
                    <a href="?p=create" id="btnCreate">Create Entry</a>
                </li>
                <li>
                    <a href="?p=edit" id="btnEdit">Edit Entry</a>
                </li>
                <li>
                    <a href="?p=delete" id="btnDelete">Delete Entry</a>
                </li>
                
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        	<cfswitch expression="#url.p#">
            
            	<cfcase value="home">
                	<cfinclude template="view/home.cfm"/>
                </cfcase> 
                           
                <cfcase value="create">
                	<cfinclude template="view/create.cfm"/>
                </cfcase>
                <cfcase value="create_act">
                	<cfinclude template="cnt/create_act.cfm"/>
                </cfcase>
                
                <cfcase value="edit">
                	<cfinclude template="view/edit.cfm"/>
                </cfcase>  
                <cfcase value="edit_act">
                	<cfinclude template="cnt/edit_act.cfm"/>
                </cfcase>
                
                <cfcase value="delete">
                	<cfinclude template="view/delete.cfm"/>
                </cfcase>
                <cfcase value="delete_act">
                	<cfinclude template="cnt/delete_act.cfm"/>
                </cfcase>
                
            </cfswitch>
        	
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    
    <!--- JQuery UI --->
	<link rel="stylesheet" href="js/jquery-ui.css">
  	<script src="js/jquery-ui.js"></script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    
    <!--- Site Logic --->
    <script src="js/js.js"></script>

</body>

</html>
