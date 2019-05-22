interaction
saveSheetToImage

	| name |	
	name := UIManager default request: 'Sheet name'.
	name ifEmpty: [^ self].
	self class saveSheet: self as: name.