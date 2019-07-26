parsing
ensureNatural: aNumber onError: aBlock

	(aNumber isInteger and: [aNumber positive]) ifTrue: [^ self].
	UIManager default
		inform:
'You must enter a natural number.
(Hint: N := Z \cap {n | n > 0}.)'
		title: 'Invalid number'.
	aBlock value.