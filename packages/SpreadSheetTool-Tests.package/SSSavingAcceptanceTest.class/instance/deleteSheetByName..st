tools
deleteSheetByName: aName

	^ self
		should: [self performSheetAction: self deleteSheetLabel byName: aName]
		raiseOnce: ProvideAnswerNotification
		butHandle: [:notification | 
			notification resume: true]