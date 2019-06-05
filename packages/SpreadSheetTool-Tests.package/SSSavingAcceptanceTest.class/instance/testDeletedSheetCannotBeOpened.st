testing
testDeletedSheetCannotBeOpened
	"Acceptance test for #27"
	
	self saveSheetAs: sheetName.
	
	self deleteSheetByName: sheetName.
	
	self
		should: [self openSheetByName: sheetName]
		raise: Error.