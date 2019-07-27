contents
helpText

	helpText ifNil: [helpText := self miniFormat: self helpString].
	^ helpText