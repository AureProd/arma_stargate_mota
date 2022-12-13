/*-----------------------------------------------------------------------------
	 _   _ ______ _  _______   ____
	| \ | |  ____| |/ /  __ \ / __ \
	|  \| | |__  | ' /| |__) | |  | |
	| . ` |  __| |  < |  _  /| |  | |
	| |\  | |____| . \| | \ \| |__| |
	|_| \_|______|_|\_\_|  \_\____/

-----------------------------------------------------------------------------*/

_result = "extDB3" callExtension format ["9:ADD_DATABASE:%1","Database"];
if (!(_result isEqualTo "[1]")) then {
	diag_log "An error occured while connecting to the database";
};
else {
	diag_log "The database has been connected successfully";
};

_result = "extDB3" callExtension format ["9:ADD_DATABASE_PROTOCOL:%2:SQL:%1:TEXT2", 444, "Database"];
if (!(_result isEqualTo "[1]")) then {
	diag_log "An error occured while connecting to the database";
} 
else {
	diag_log "The database has been connected successfully";
};