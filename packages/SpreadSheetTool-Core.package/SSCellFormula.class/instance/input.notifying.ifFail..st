evaluation
input: aString notifying: aController ifFail: aBlock

	^ (self isHybrid ==> [model class hasFormulaFormat: aString])
		ifFalse: [
			input := aString.
			isFormula := false]
		ifTrue: [
			self compile: aString notifying: aController ifFail: aBlock.
			isFormula := true]