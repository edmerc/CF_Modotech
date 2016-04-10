<!--- recieve form data and commit --->

<cfif not isDefined("form")>
	<cflocation url="?p=home" addtoken="no"/>
</cfif>

<!--- add entry --->
<cfscript>
	newEntry = EntityNew("entries");
	newEntry.setUserID(form.userID);
	newEntry.setClientID(form.selectClient);
	newEntry.setEntry(form.entry);
	newEntry.setNumberOfHours(form.selectNumberOfHours);
	newEntry.setDateApplied(form.dateApplied);
	newEntry.setDateCreated(now());
	newEntry.setIsActive(1);	
	EntitySave( newEntry );
</cfscript>


<!--- create entry form --->
<div id="page-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">           
            
            
            <div class="panel panel-default">
              <div class="panel-heading"><h1>Entry has been created.</h1></div>
              <div class="panel-body">
                	<cfoutput>                    
                        <label>User Name</label>	
                        <div class="well">#userName#</div>
                        
                        
                        <label>Client</label>
                        <div class="well">#newEntry.getclientID()#</div>
                        
                        
                        <label>Number of Hours</label>
                        <div class="well">#newEntry.getnumberOfHours()#</div>
                        

                        <label>Date Applied</label>
                        <div class="well">#newEntry.getdateApplied()#</div>
                        
                        
                        <label>Date Created</label>
                        <div class="well">#newEntry.getdateCreated()#</div>
                        
                        
                        <label>Entry</label>
                        <div class="well">#newEntry.getentry()#</div>   
                    </cfoutput>
                </div>
            </div>
                
                <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
            </div>
        </div>
    </div>
</div>
