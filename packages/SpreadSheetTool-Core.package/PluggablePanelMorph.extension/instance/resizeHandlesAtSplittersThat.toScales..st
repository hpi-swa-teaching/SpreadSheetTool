*SpreadSheetTool-Core-resizing
resizeHandlesAtSplittersThat: aSplitterSelector toScales: scales

	| splitters shift splitterShifts |
	splitters := (self splitters select: aSplitterSelector)
		sortedBy: [:m | m position r].
	shift := 0.
	splitterShifts := splitters
		with: scales allButLast
		collect: [:splitter :scale | | morph delta |
			morph := splitter anyPredecessor.
			delta := splitter splitsLeftAndRight
				ifTrue: [(scale - morph width) @ 0]
				ifFalse: [0 @ (scale - morph height)].
			splitter -> (shift := shift + delta)].
	splitterShifts do: [:splitterShift |
		splitterShift key repositionBy: splitterShift value].
	self owner fullBounds.