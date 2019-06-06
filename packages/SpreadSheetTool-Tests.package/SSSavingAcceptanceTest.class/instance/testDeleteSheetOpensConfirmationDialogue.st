testing
testDeleteSheetOpensConfirmationDialogue
	"Acceptance test for #27"
	
	self saveSheetAs: self someSheetName.
	
	self
		should: [self performSheetAction: self deleteSheetLabel byName: self someSheetName]
		raiseOnce: ProvideAnswerNotification
		butHandleException: [:notification | 
			self assert: (notification messageText includesSubString: self someSheetName)].