interactive error protocol
correctFrom: start to: stop with: aString

	| return |
	self readOnly: false.
	return := super correctFrom: start to: stop with: aString.
	self textEdited: self text.
	^ return