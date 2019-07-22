nested model
displayAspect: anObject

	| objectToSet |
	objectToSet := anObject.
	(modelConfig understandsNil not and: [objectToSet isNil] and: [latestHash isNil])
		ifTrue: [^ self].
	modelConfig displaysString ifTrue: [
		(objectToSet isNil and: [latestHash isNil])
			ifTrue: [^ self].
		objectToSet := objectToSet asString].
	model perform: modelConfig contentSetter with: objectToSet.