formula evaluation
setValue: anObject

	| objectToSet |
	self setter ifNil: [^ self].
	objectToSet := anObject.
	modelConfig displaysString ifTrue: [
		objectToSet := objectToSet asString].
	(self parent object executeMethod: self setter) value: objectToSet.