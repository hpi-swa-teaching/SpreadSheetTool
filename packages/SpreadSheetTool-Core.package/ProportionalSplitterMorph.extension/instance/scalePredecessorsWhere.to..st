*SpreadSheetTool-Core-events
scalePredecessorsWhere: aSelectorBlock to: aScaleBlock

	leftOrTop
		detect: aSelectorBlock
		ifFound: [:morph |
			self splitsLeftAndRight
				ifTrue: [self repositionBy:
					((aScaleBlock value: morph) - morph width) @ 0]
				ifFalse: [self repositionBy:
					0 @ ((aScaleBlock value: morph) - morph height)]]