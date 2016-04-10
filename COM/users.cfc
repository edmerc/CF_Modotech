component persistent="true" {

	property name="userID" column="id" fieldtype="id" generator="native" setter="false";
	property name="userName" column="userName" ormtype="string";  
    property name="isActive" column="isActive" ormtype="boolean"; 
    property name="dateCreated" column="dateCreated" ormtype="timestamp"; 

}