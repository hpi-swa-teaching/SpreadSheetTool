evaluation
evaluate

	self clearServers.
	self cell evaluateSynchronizing: [
		self parent autoEvaluateActivated ifTrue: [
			clients do: #serverChanged]].