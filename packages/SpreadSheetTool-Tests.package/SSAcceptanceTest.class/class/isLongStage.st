staging
isLongStage

	^ isLongStage ifNil: [isLongStage :=
		Smalltalk globals at: #SmalltalkCI
			ifPresent: [:sci |
				| ci |
				ci := (sci perform: #getEnv: with: 'CONTINUOUS_INTEGRATION').
				Transcript showln: ci class.
				ci = #true]
			ifAbsent: [false]]