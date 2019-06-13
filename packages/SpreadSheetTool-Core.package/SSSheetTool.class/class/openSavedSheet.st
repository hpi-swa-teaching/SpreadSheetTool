open and save
openSavedSheet
	
	savedSheets ifEmpty: [
		UIManager inform: 'There are no saved sheets'.
		^ self].
	(UIManager default chooseFromDictionary: savedSheets title: 'Open sheet')
		ifNotNil: [:sheet | self openSheet: sheet veryDeepCopy].