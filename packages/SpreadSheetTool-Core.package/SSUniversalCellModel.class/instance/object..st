forwarding
object: anObject

	| objectToSet |
	objectToSet := anObject.
	(objectToSet isNil and: [modelConfig understandsNil not])
		ifTrue: [^ self].
	modelConfig displaysString ifTrue: [
		objectToSet := (objectToSet isNil and: [latestHash isNil])
			ifTrue: ['']
			ifFalse: [objectToSet asString]].
	model perform: modelConfig contentSetter with: (
		objectToSet).