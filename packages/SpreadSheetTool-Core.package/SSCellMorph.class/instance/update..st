as yet unclassified
update: what

	(self isEditing and: what = self getTextSelector) ifTrue: [^ self].
	^ super update: what