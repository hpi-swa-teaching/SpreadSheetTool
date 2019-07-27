testing
testDeleteSheetOpensConfirmationDialog
	"Acceptance test for #27 (Delete saved sheets)"
	
	self saveSheetAs: self someSheetName.
	self
		should: [self tryDeleteSheetByName: self someSheetName]
		notify: 'delete'.