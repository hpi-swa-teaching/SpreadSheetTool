staging
isLongStage

	^ IsLongStage ifNil: [IsLongStage :=
		Smalltalk globals at: #SmalltalkCI
			ifPresent: [:sci | (sci
				perform: #getEnv: with: 'CONTINUOUS_INTEGRATION') = #true]
			ifAbsent: [false]]