as yet unclassified
beBusyWhile: aBlock

	| result |
	^ [self beBusy.
		result := aBlock value.
		self hasEditFocus: false.
		result]
			ensure: [self beReady].