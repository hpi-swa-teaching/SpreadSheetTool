accessing
update: what

	what = #keyboardFocus ifTrue: [
		self containingMorphicModel color: Color random.
		^ self].
	
	^ super update: what