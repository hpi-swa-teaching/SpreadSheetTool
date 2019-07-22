as yet unclassified
changed: what

	super changed: what.
	what = #contents ifTrue: [self changed: #object].
	self flag: #todo "object is a bad name!"