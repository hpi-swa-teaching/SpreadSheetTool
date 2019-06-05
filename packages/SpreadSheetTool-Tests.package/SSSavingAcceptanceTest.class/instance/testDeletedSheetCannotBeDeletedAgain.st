testing
testDeletedSheetCannotBeDeletedAgain
	"Acceptance test for #27"
	
	self saveSheetAs: sheetName.
	
	self deleteSheetByName: sheetName.
	
	self
		should: [self deleteSheetByName]
		raise: Error.