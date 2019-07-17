interaction
saveSheetToImage

	| name |
	name := UIManager default request: 'Sheet name'.
	name ifEmpty: [^ self].
	(self class hasSheetNamed: name) ==> [self promptOverwriteSheet]
		ifFalse: [^ self].
	self class saveSheet: self veryDeepCopy as: name.
	hasUnsavedChanges := false.