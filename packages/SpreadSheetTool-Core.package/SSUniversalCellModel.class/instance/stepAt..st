stepping
stepAt: millisecondClockValue

	| newObject |
	newObject := self getter ifNotNil: [self executeMethod: self getter].
	latestObject = newObject ifFalse: [
		self object: newObject.
		latestObject := newObject].
	
	self update: #contents.