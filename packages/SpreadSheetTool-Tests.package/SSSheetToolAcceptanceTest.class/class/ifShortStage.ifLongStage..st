staging
ifShortStage: aBlock ifLongStage: anotherBlock

	^ self isLongStage
		ifFalse: aBlock
		ifTrue: anotherBlock