component persistent="true" {

	property name="id" column="id" fieldtype="id" generator="native" setter="false";
	property name="userID" column="userID" ormtype="int";  
    property name="clientID" column="clientID" ormtype="int";
    property name="entry" column="entry" ormtype="text";    
    property name="numberOfHours" column="numberOfHours" ormtype="float";
    property name="dateApplied" column="dateApplied" ormtyle="date";
    property name="dateCreated" column="dateCreated" ormtype="timestamp";
    property name="isActive" column="isActive" ormtype="boolean";  
    

}