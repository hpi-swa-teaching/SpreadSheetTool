assertions
shouldntNotify: aBlock
	
	^ self
		shouldnt: aBlock
		notify: '*'