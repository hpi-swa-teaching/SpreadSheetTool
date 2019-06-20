evaluation
evaluate

	| result success |
	[self beBusy.
		result := self cell value.
		success := true]
		ensure: [
			success = true ifFalse: [
				self editMode: true.
				hasUnacceptedEdits := true].
			self beReady].
	latestValue := result.
	^ result asString