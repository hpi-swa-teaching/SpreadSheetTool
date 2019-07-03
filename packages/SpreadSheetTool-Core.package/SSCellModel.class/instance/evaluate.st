evaluation
evaluate

	self clearServers.
	self cell evaluate.
	self parent autoEvaluateActivated ifTrue: [
		clients do: #serverChanged].