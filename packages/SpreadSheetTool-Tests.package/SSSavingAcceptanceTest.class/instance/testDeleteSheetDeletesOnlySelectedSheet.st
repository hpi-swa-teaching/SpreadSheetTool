testing
testDeleteSheetDeletesOnlySelectedSheet
	"Acceptance test for #27"
	
	self saveSheetAs: sheetName.
	self saveSheetAs: self anotherSheetName.
	
	self deleteSheetByName: sheetName.
	
	self flag: #todo "Check that one sheet name appears in the list, the other doesn't. Fix this...".
	
	self
		shouldnt: [self openSheetByName: self anotherSheetName]
		raise: Error.
	
	self
		should: [self openSheetByName: sheetName]
		raise: ProvideAnswerNotification.