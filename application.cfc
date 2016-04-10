component {
	this.name = hash( getCurrentTemplatePath() );
    this.applicationTimeout = createTimeSpan( 0, 0, 10, 0 );
    this.SessionManagement = true;
    this.SessionTimeout = CreateTimeSpan( 0, 0, 5, 0 );
	this.datasource = "Modotech";
    this.ormEnabled = true;
	this.ormSettings = { logsql : true }; 
    this.ormsettings.cfclocation = "com";
    this.ormsettings.dbcreate = "update";
    this.ormSettings.useDBForMapping = false;
	this.invokeImplicitAccessor = true;
    
    function onApplicationStart(){
        application.datasource = this.datasource;
        return true;
    }
    
    function onSessionStart(){
    	session.userID = 1;
        return true;
    }
}