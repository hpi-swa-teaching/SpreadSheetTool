assertions
should: aBlock notify: aFilter
	
	^ self
		should: aBlock
		notify: aFilter
		butHandle: []