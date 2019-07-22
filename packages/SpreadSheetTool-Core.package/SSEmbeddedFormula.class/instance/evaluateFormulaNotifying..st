evaluation
evaluateFormulaNotifying: aController
	"private"

	| compiler result |
	compiler := Compiler new.
	result := compiler
		evaluate: (ReadStream on: self input)
		in: self context
		to: self receiver
		notifying: aController
		ifFail: [Abort signal]
		logged: true.
	self checkForInputChange: compiler.
	^ result