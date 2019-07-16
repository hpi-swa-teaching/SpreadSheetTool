staging
isLongStage

	^ isLongStage ifNil: [isLongStage :=
		Smalltalk os platformName includesSubstring: 'mac'
		"Abuse running platform for staging. Long stage tests
		only run on Apple devices which are too expensive for students."]