open and save
openSavedSheet
	
	savedSheets ifEmpty: [
		UIManager inform: 'There are no saved sheets'.
		^ self].
	self flag: #todo "Quick and dirty. Better change the whole design.".
	(UIManager default chooseFromDictionary: savedSheets)
		ifNotNil: [:sheet | sheet veryDeepCopy open].