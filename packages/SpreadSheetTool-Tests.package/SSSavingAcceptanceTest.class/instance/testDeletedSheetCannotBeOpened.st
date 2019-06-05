testing
testDeletedSheetCannotBeOpened
	"Acceptance test for #27"
	
	self
		saveSheetAs: self someSheetName;
		deleteSheetByName: self someSheetName.
	
	self
		should: [self openSheetByName: self someSheetName]
		raise: Exception.