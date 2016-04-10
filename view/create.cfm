<!--- get clients --->
<cfset clients = entityLoad("clients",{ isActive=true }, "clientName")/>

<!--- create entry form --->
<div id="page-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">           
            
            
            <div class="panel panel-default">
              <div class="panel-heading"><h1>Create an Entry</h1></div>
              <div class="panel-body">
                	<cfoutput>
                    <form name="formCreate" id="formCreate" action="?p=create_act" method="post" role="form">
                        <label>User Name</label>
                        <input type="text" name="userName" id="userName" value="#userName#" class="form-control" readonly />
                        <input type="hidden" name="userID" id="userID" value="#userID#" />
                        
                        <br />
                        
                        <label>Client</label>
                        <select name="selectClient" id="selectClient" class="form-control">
                        	<option>Select a client</option>
                            
                            <cfloop array="#clients#" index="x">
								<option value="#x.getID()#"> #x.getClientName()#</option>
                            </cfloop>
                        </select>
                        
                        <br>
                        
                        <label>Number of Hours</label>
                        <select name="selectNumberOfHours" id="selectNumberOfHours" class="form-control">
                        	<option>Select hours</option>
                            
                            <cfloop from=".5" to="8" step=".5" index="x">
								<option value="#x#"> #x#</option>
                            </cfloop>
                        </select>
                        
                        <br>

                        <label>Date Applied</label>
                        <input type="text" name="dateApplied" id="dateApplied" class="form-control" />
                        
                        <br />
                        
                        <label>Entry</label>
                        <textarea name="entry" id="entry" class="form-control"></textarea>
                        
                        <br>
						<button>Submit</button>
                    </form>
                    </cfoutput>
                </div>
            </div>
                
                <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
            </div>
        </div>
    </div>
</div>
