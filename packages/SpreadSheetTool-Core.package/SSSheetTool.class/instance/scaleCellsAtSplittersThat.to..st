distribution
scaleCellsAtSplittersThat: splitterSelector to: scales

	| cellPanel |
	cellPanel := cellMorphs anyOne ownerChain at: 3.
	cellPanel owner fullBounds.
	cellPanel
		resizeHandlesAtSplittersThat: splitterSelector
		toScales: (scales dithered: #rounded).
	cellPanel owner fullBounds.