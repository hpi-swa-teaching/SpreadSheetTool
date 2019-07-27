nested model
displayAspect: anObject

	| objectToSet |
	objectToSet := anObject.
	(self modelConfig understandsNil not
		and: [objectToSet isNil] and: [latestHash isNil])
			ifTrue: [^ self].
	self modelConfig displaysString ifTrue: [
		(objectToSet isNil and: [latestHash isNil])
			ifTrue: [^ self].
		objectToSet := objectToSet asString].
	self model perform: self modelConfig contentSetter with: objectToSet.