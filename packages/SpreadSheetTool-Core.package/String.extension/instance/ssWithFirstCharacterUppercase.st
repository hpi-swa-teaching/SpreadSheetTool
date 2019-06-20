*SpreadSheetTool-Core-converting
ssWithFirstCharacterUppercase

	| answer |
	self ifEmpty: [^ self copy].
	answer := self copy asString.
	answer at: 1 put: (answer at: 1) asUppercase.
	^ self class newFrom: answer