staging
isLongStage

	^ isLongStage ifNil: [isLongStage :=
		Smalltalk globals at: #SmalltalkCI
			ifPresent: [:sci |
				| stage |
				stage := (sci perform: #getEnv: with: 'TRAVIS_BUILD_STAGE_NAME').
				stage = #Longstage]
			ifAbsent: [false]]