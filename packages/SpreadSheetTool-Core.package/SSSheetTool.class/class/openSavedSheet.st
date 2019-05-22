as yet unclassified
openSavedSheet
	
	savedSheets ifEmpty: [
		UIManager inform: 'There are no saved sheets'.
		^ self].
	(UIManager default chooseFromDictionary: savedSheets)
		ifNotNil: [:sheet | sheet open].