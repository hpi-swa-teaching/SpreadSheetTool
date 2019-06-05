tools
trySheetAction: anActionLabel ByName: aName

	^ self
		should: [ (self subject findByLabel: anActionLabel) click ]
		raise: ProvideAnswerNotification
		butHandleExceptionOnce: [ :notification | 
			notification messageText isEmptyOrNil
				ifTrue: [ notification resume: aName ] ]