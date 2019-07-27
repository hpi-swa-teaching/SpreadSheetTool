assertions
should: aBlock notify: aFilter thenAnswer: anObject
	
	^ self
		should: aBlock
		notify: aFilter
		butHandle: [:notification | notification resume: anObject]