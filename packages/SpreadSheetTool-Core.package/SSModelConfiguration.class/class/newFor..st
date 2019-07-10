instance creation
newFor: aClass

	^ self new
		modelClass: aClass;
		yourself