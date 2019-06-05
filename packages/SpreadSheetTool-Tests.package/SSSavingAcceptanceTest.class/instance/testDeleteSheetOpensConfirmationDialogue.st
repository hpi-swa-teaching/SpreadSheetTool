testing
testDeleteSheetOpensConfirmationDialogue
	"Acceptance test for #27"
	
	self saveSheetAs: sheetName.
	
	self
		should: [self sheetAction: self deleteSheetLabel ByName: sheetName]
		raise: ProvideAnswerNotification
		butHandleExceptionOnce: [ :notification | 
			self assert: (notification messageText includesSubString: sheetName)].