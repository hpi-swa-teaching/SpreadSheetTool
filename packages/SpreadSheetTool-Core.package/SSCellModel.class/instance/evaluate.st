evaluation
evaluate

	self cell evaluate.
	self parent autoEvaluateActivated ifTrue: [
		clients do: #serverChanged].