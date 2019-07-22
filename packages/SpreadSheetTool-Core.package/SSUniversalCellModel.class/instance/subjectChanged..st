subject
subjectChanged: anObject

	self hasStandaloneModel ifTrue: [^ self].
	self updateModel: anObject.