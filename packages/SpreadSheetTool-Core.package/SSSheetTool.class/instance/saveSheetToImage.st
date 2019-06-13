interaction
saveSheetToImage

	| name |	
	name := UIManager default request: 'Sheet name'.
	name ifEmpty: [^ self].
	((self class hasSheetNamed: name) ==> [
		(UIManager default confirm: 
'A sheet with this name already exists.
Overwrite it?')])
		ifFalse: [^ self].
	
	self class saveSheet: sheet veryDeepCopy as: name.
	hasUnsavedChanges := false.