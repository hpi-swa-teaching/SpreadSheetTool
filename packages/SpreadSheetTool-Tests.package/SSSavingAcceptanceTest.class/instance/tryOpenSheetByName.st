tools
tryOpenSheetByName

	^ self
		should: [ (self subject findByLabel: 'Open sheet') click ]
		raise: ProvideAnswerNotification
		butHandleExceptionOnce: [ :notification | 
			notification messageText isEmptyOrNil
				ifTrue: [ notification resume: sheetName ] ]