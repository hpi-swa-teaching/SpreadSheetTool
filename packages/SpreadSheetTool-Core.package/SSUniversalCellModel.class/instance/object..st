forwarding
object: anObject

	| objectToSet |
	objectToSet := anObject.
	(objectToSet isNil and: [modelConfig understandsNil not])
		ifTrue: [^ self].
	modelConfig displaysString ifTrue: [
		(objectToSet isNil and: [latestHash isNil])
			ifTrue: [^ self].
		objectToSet := objectToSet asString].
	model perform: modelConfig contentSetter with: (
		objectToSet).