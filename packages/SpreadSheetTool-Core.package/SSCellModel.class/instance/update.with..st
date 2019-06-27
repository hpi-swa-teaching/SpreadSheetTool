dependencies
update: anAspect with: anObject

	anAspect = #keyboardFocus ifTrue: [
		isBusy ifTrue: [^ self].
		(self editMode and: [self shouldAutoSave not] and: [hasUnacceptedEdits])
			ifTrue: [^ self].
		self editMode: anObject.
		^ self].
	
	^ super update: anAspect with: anObject