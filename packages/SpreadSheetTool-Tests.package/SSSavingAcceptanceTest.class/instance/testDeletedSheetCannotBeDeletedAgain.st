testing
testDeletedSheetCannotBeDeletedAgain
	"Acceptance test for #27"
	
	self
		saveSheetAs: self someSheetName;
		deleteSheetByName: self someSheetName.
	
	self
		should: [self deleteSheetByName]
		raise: Exception.