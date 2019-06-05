tools
deleteSheetByName: aName

	^ self
		should: [self sheetAction: self deleteSheetLabel ByName: aName]
		raise: ProvideAnswerNotification
		butHandleExceptionOnce: [ :notification | 
			notification messageText isEmptyOrNil
				ifTrue: [ notification resume: true ] ]