tools
openSheetByName: aName

	| window |
	window := self findWindowOpenedWhile: [self
		should: [(self subject findByLabel: 'Open sheet') click]
		raise: ProvideAnswerNotification
		butHandleException: [:notification |
			notification messageText isEmptyOrNil ifTrue:
				[notification resume: sheetName]]].
	^ MTFMorphWrapper newWith:
		window asOrderedCollection