contents
aboutText

	aboutText ifNil: [aboutText := self miniFormat: self aboutString].
	^ aboutText