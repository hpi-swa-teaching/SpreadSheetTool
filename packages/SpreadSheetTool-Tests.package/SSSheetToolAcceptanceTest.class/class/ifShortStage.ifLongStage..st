staging
ifShortStage: aBlock ifLongStage: anotherBlock

	^ self isLongStage
		ifTrue: aBlock
		ifFalse: anotherBlock