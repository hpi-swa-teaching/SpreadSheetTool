tools
performSheetAction: anActionLabel byName: aName

	^ self
		should: [(self subject findByLabel: anActionLabel) click]
		raiseOnce: ProvideAnswerNotification
		butHandleException: [:notification | 
			notification messageText isEmptyOrNil
				ifTrue: [notification resume: aName]]