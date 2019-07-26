interaction
openSheetFromImage
	
	self class savedSheets ifEmpty: [
		^ UIManager inform: 'There are no saved sheets'].
	(UIManager default chooseFromDictionary: self class savedSheets title: 'Open sheet')
		ifNotNil: [:sheet | self openSheet: sheet].