accessing
update: anAspect with: anObject

	anAspect = #keyboardFocus ifTrue: [
		(self editMode and: [self isFormula] and: [hasUnacceptedEdits])
			ifTrue: [^ self].
		self editMode: anObject.
		^ self].
	
	^ super update: anAspect with: anObject