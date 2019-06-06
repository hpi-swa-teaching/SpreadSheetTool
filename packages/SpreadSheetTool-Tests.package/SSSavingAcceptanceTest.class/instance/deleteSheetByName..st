tools
deleteSheetByName: aName

	^ self
		should: [self performSheetAction: self deleteSheetLabel byName: aName]
		raiseOnce: ProvideAnswerNotification
		butHandleException: [:notification | 
			notification resume: true]