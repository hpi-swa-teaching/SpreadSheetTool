evaluation
evaluateFormulaNotifying: aRequestor

	| compiler result |
	compiler := Compiler new.
	result := compiler
		evaluate: (ReadStream on: self rawValue)
		in: nil
		to: self
		notifying: aRequestor
		ifFail: [Abort signal]
		logged: true.
	self handleFormulaUpdate: compiler.
	^ result