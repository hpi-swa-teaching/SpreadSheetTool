display
beBusyWhile: aBlock

	^ [self beBusy.
	aBlock value]
		ensure: [self beReady].