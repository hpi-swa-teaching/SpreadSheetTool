*SpreadSheetTool-Core-resizing
resizeHandlesAtSplittersThat: aSplitterSelector toScales: aScaleCollection

	| splitters shift splitterShifts scaleIndex |
	splitters := (self splitters select: aSplitterSelector)
		sortedBy: [:m | m position r].
	shift := 0.
	scaleIndex := 0.
	splitterShifts := splitters collect: [:splitter | | delta |
		splitter inAnyPredecessor: [:morph | | scale |
			scale := aScaleCollection at: (scaleIndex := scaleIndex + 1).
			delta := splitter splitsLeftAndRight
				ifTrue: [(scale - morph width) @ 0]
				ifFalse: [0 @ (scale - morph height)]].
		splitter -> (shift := shift + delta)].
	splitterShifts do: [:splitterShift |
		splitterShift key repositionBy: splitterShift value]