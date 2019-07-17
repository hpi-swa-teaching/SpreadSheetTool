formula evaluation
setValue: anObject

	| objectToSet |
	setterBlock ifNil: [^ self].
	objectToSet := anObject.
	(self parent object executeMethod: setterBlock) value: objectToSet.