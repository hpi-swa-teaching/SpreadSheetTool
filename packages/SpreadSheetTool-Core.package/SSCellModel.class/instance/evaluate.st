evaluation
evaluate

	latestValue := self cell value.
	self parent autoEvaluateActivated ifTrue: [
		clients do: #serverChanged].