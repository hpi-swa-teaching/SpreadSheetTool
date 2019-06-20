accessing
unacceptedChangesOrNil

	hasUnacceptedEdits ifFalse: [^ nil].
	^ self containingMorphicModels
		ifEmpty: [nil]
		ifNotEmpty: [:morphs | morphs singleOne text]