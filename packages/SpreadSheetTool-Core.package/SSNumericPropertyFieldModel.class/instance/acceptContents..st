interaction
acceptContents: aTextOrString

	| input integer |
	input := aTextOrString asString withBlanksTrimmed.
	integer := self tryParse: input onError: [^ false].
	self ensureNatural: integer onError: [^ false].
	self ensureNonZero: integer onError: [^ false].
	self ensureFormat: input onError: [^ false].
	self contents: integer.
	^ true