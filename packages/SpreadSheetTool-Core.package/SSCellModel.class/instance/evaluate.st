evaluation
evaluate

	self clearServers.
	self cell
		evaluateNotifying: (SSSheetTool useInlineSyntaxErrors ifTrue: morph)
		synchronizing: [
			self parent autoEvaluateActivated ifTrue: [
				clients do: #serverChanged]].