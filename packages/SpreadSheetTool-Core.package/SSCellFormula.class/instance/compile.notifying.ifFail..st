evaluation
compile: aString notifying: aController ifFail: aBlock

	| newSource |
	compiledMethod := self filterNotificationsWhile: [compiler
		compile: (ReadStream on: aString)
		in: self context
		to: self receiver
		notifying: aController
		ifFail: aBlock].
	aController isNil ==> [(newSource := compiler parser sourceString) isEmpty]
		ifTrue: [input := aString]
		ifFalse: [
			input := newSource.
			self changed: #input].