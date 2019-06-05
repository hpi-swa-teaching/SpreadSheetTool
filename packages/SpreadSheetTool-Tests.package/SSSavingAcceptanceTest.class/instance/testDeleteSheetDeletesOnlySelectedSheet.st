testing
testDeleteSheetDeletesOnlySelectedSheet
	"Acceptance test for #27"
	
	self saveSheetAs: sheetName.
	self saveSheetAs: self anotherSheetName.
	
	self deleteSheetByName: sheetName.
	
	self
		shouldnt: [self openSheetByName: self anotherSheetName]
		raise: Error.
	
	self
		should: [self openSheetByName: sheetName]
		raise: Error.