accessing
acceptContents: aTextOrString

	| integer |
	[integer := aTextOrString asNumber]
		on: NumberParserError
		do: [UIManager default
				inform: 'You must enter a valid number.'
				title: 'Invalid number'.
			^ false].
	(integer isInteger and: integer positive) ifFalse: [
		UIManager default
			inform: 'You must enter a natural number. (Hint: N := Z \cap {n | n > 0}.)'
			title: 'Invalid number'.
		^ false].
	integer isZero ifTrue: [
		UIManager default
			inform: 'You must enter a natural number, and as this is Squeak, zero does not count!'
			title: 'Invalid number'.
		^ false].
	aTextOrString hasPositiveIntegerFormat ifFalse: [
		UIManager default
			inform: 'You must enter a natural number and nothing else!'
			title: 'Invalid number'.
		^ false].
	self contents: integer.
	^ true