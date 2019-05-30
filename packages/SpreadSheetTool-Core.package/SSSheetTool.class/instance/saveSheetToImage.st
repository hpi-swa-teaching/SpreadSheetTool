interaction
saveSheetToImage

	| name |	
	name := UIManager default request: 'Sheet name'.
	name ifEmpty: [^ self].
	self class saveSheet: sheet veryDeepCopy as: name.
	
	hasUnsavedChanges := false.