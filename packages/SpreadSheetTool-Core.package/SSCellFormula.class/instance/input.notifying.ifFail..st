evaluation
input: aString notifying: aController ifFail: aBlock

	^ (self isFormula: aString)
		ifFalse: [
			input := aString.
			isFormula := false]
		ifTrue: [
			self compile: aString notifying: aController ifFail: aBlock.
			isFormula := true]