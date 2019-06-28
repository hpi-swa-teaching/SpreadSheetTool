updating
update: anAspect with: anObject

	anAspect = #keyboardFocus ifTrue: [ 
		isBusy ifTrue: [ ^ self ].
		^ self keyboardFocusChanged: anObject].
	
	^ super update: anAspect with: anObject