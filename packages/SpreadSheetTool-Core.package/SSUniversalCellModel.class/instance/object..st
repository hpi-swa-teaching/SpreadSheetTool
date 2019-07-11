forwarding
object: anObject

	| objectToSet |
	objectToSet := anObject.
	objectToSet ifNil: [
		modelConfig understandsNil ifFalse: [^ self].
		modelConfig displaysString ifTrue: [
			objectToSet := latestHash
				ifNil: ['']
				ifNotNil: [anObject asString]]].
	model perform: modelConfig contentSetter with: (
		objectToSet).