running
subject

	super subject model ifNil:
		[self wantsToTest: model containingWindow].
	^ super subject