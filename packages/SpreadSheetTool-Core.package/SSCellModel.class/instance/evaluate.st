evaluation
evaluate

	| value |
	value := self cell value.
	self parent autoEvaluateActivated ifTrue: [
		clients do: #serverChanged].
	latestValue := value.