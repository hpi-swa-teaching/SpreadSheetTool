testing
testDeletedSheetCannotBeOpened
	"Acceptance test for #27 (Delete saved sheets)"
	
	self
		saveSheetAs: self someSheetName;
		deleteSheetByName: self someSheetName.
	self
		should: [self openSheetByName: self someSheetName]
		raise: Exception.