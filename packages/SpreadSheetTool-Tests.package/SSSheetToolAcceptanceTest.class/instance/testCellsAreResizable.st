testing
testCellsAreResizable
	"Test for #6 (Between cells there is a space in which I can drag horizontally/vertically)."

	| horizontalSplitters verticalSplitters |
	
	verticalSplitters := self subject
		findByClass: ProportionalSplitterMorph
		andCriteria: [:splitter | splitter splitsTopAndBottom and: [
			{ self subject
				findByPosition: splitter position - (0 @ self splitterThickness)
				andCriteria: [:m | m isTextView].
			   self subject
				findByPosition: splitter position + (0 @ self splitterThickness)
				andCriteria: [:m | m isTextView] }
			allSatisfy: [:m | m morphs notEmpty and: [m model class = SSCellModel]]]].
	self
		assert: self subject model rowCount - 1
		equals: verticalSplitters morphs size.
	
	horizontalSplitters := self subject
		findByClass: ProportionalSplitterMorph
		andCriteria: [:splitter | splitter splitsLeftAndRight and: [
			{ self subject
				findByPosition: splitter position - (self splitterThickness @ 0)
				andCriteria: [:m | m isTextView].
			   self subject
				findByPosition: splitter position + (self splitterThickness @ 0)
				andCriteria: [:m | m isTextView] }
			allSatisfy: [:m | m morphs notEmpty and: [m model class = SSCellModel]]]].
	self
		assert: self subject model columnCount - 1
		equals: horizontalSplitters morphs size.