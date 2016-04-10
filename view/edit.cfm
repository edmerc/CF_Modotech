<!--- edit entry form --->
<div id="page-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1>Edit an Entry</h1>
                <div id="divEdit">
                	<form name="formCreate" id="formCreate" action="?" method="post">
                        <label>Select Entry</label>
                        <select name="selectEntry" name="selectEntry">
                        	<option>Select Entry</option>
                        </select>
                    </form>
                    
                    <form name="formCreate" id="formCreate" action="?" method="post">
                        <label>User Name</label>
                        <input type="text" name="userName" id="userName" />
                        
                        <br />
                        
                        <label>Date Applied</label>
                        <input type="text" name="dateApplied" id="dateApplied" />
                        
                        <br />
                        
                        <label>Entry</label>
                        <textarea name="entry" id="entry"></textarea>
                    </form>
                </div>
                
                <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
            </div>
        </div>
    </div>
</div>
