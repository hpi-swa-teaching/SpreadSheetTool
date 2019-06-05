tools
deleteSheetByName: aName

	^ self
		should: [self performSheetAction: self deleteSheetLabel byName: aName]
		raise: ProvideAnswerNotification
		butHandleExceptionOnce: [:notification | 
			notification messageText isEmptyOrNil
				ifTrue: [notification resume: true]]