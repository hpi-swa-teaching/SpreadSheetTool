evaluation
evaluate

	self clearServers.
	self cell evaluateNotifying: morph synchronizing: [
		self parent autoEvaluateActivated ifTrue: [
			clients do: #serverChanged]].