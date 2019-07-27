state
beBusyWhile: aBlock

	self beBusy.
	^ aBlock ensure: [self beReady]