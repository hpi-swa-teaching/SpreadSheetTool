subject
subjectChanged: anObject

	self hasStandaloneModel ifTrue: [^ self flag: #todo]. "Temporary disabled - discussion!"
	self manipulateModel: anObject.