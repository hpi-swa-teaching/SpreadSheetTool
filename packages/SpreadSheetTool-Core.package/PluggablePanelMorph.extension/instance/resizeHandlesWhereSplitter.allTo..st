*SpreadSheetTool-Core-resizing
resizeHandlesWhereSplitter: aSplitterSelector allTo: aScale

	| splitters shift splitterShifts |
	splitters := (self splitters select: aSplitterSelector)
		sortedBy: [:m | m position r].
	shift := 0.
	splitterShifts := splitters collect: [:splitter | | delta |
		splitter inAnyPredecessor: [:morph |
			delta := splitter splitsLeftAndRight
				ifTrue: [(aScale - morph width) @ 0]
				ifFalse: [0 @ (aScale - morph height)]].
		splitter -> (shift := shift + delta)].
	splitterShifts do: [:splitterShift |
		splitterShift key repositionBy: splitterShift value]