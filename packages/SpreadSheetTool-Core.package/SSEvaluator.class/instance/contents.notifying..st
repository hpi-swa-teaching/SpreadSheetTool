interaction
contents: aTextOrString notifying: aRequestor

	self object: (self compiler
		evaluate: aTextOrString asString
		in: nil
		to: nil
		notifying: (SSSheetTool useInlineSyntaxErrors ifTrue: [aRequestor])
		ifFail: [^ false]).
	^ true