evaluation
evaluate

	| success oldValue |
	success := false.
	isBusy ifTrue: [self error: 'Cycling cell reference detected'].
	[self beBusy.
		oldValue := latestValue.
		latestValue := self cell value.
		self parent autoEvaluateActivated ifTrue: [
			clients do: #serverChanged].
		success := true]
	ensure: [
		success ifFalse: [
			latestValue := oldValue.
			self editMode: true.
			hasUnacceptedEdits := true].
		self beReady].