interaction
saveSheetToImage

	| name |	
	name := UIManager default request: 'Sheet name'.
	name ifEmpty: [^ self].
	self flag: #todo "Quick and dirty. Better change the whole design.".
	self class saveSheet: self veryDeepCopy as: name.
	
	hasUnsavedChanges := false.