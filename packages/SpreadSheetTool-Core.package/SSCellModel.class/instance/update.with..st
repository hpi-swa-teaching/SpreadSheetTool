accessing
update: anAspect with: anObject

	anAspect = #keyboardFocus ifTrue: [
		self editMode: anObject.
		self contentsChanged.
		^ self].
	
	^ super update: anAspect with: anObject