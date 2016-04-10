component persistent="true" {

	property name="clientID" column="id" fieldtype="id" generator="native" setter="false";
	property name="clientName" column="clientName" ormtype="string";  
    property name="dateCreated" column="dateCreated" ormtype="timestamp";
    property name="isActive" column="isActive" ormtype="boolean";  
}