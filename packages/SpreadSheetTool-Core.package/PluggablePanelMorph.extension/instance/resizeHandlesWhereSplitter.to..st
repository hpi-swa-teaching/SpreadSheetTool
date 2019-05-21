*SpreadSheetTool-Core-resizing
resizeHandlesWhereSplitter: aSplitterSelector to: aDictionary

	| splitters shift splitterShifts |
	splitters := (self splitters select: aSplitterSelector)
		sortedBy: [:m | m position r].
	shift := 0.
	splitterShifts := splitters collect: [:splitter | | delta |
		splitter inAnyPredecessor: [:morph | | scale |
			scale := aDictionary at: morph model.
			delta := splitter splitsLeftAndRight
				ifTrue: [(scale - morph width) @ 0]
				ifFalse: [0 @ (scale - morph height)]].
		splitter -> (shift := shift + delta)].
	splitterShifts do: [:splitterShift |
		splitterShift key repositionBy: splitterShift value]