accessing
update: anAspect with: anObject

	anAspect = #keyboardFocus ifTrue: [
		(self editMode and: [self cell isFormula] and: [self hasUnacceptedEdits])
			ifTrue: [^ self].
		self editMode: anObject.
		^ self].
	
	^ super update: anAspect with: anObject