testing
testDeleteSheetOpensConfirmationDialogue
	"Acceptance test for #27"
	
	self saveSheetAs: sheetName.
	
	self
		should: [self performSheetAction: self deleteSheetLabel byName: sheetName]
		raise: ProvideAnswerNotification
		butHandleExceptionOnce: [ :notification | 
			self assert: (notification messageText includesSubString: sheetName)].