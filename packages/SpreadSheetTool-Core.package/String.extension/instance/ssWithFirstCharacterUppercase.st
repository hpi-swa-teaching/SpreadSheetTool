*SpreadSHeetTool-Core-converting
ssWithFirstCharacterUppercase

	| answer |
	self ifEmpty: [^ self copy].
	answer := self copy.
	answer at: 1 put: (answer at: 1) asUppercase.
	^ answer