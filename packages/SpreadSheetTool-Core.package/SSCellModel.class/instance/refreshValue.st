evaluation
refreshValue

	self isFormula
		ifTrue: [self evaluate]
		ifFalse: [latestValue := self cell rawValue].
	self parent autoEvaluateActivated ifTrue: [
		clients do: #serverChanged].