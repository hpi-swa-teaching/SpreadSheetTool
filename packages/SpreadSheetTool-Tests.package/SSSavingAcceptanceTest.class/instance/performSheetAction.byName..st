tools
performSheetAction: anActionLabel byName: aName

	^ self
		should: [(self subject findByLabel: anActionLabel) click]
		raiseOnce: ProvideAnswerNotification
		butHandle: [:notification | 
			notification messageText isEmptyOrNil
				ifTrue: [notification resume: aName]]