testing
findSplittersByCriteria: aBlock withPositionDeltaForAdjacentCells: aPoint

	^ (self subject
		findByClass: ProportionalSplitterMorph
		andCriteria: [:splitter | (aBlock value: splitter) and: [
			{ self subject
				findByPosition: splitter position - aPoint
				andCriteria: [:m | m isTextView].
			   self subject
				findByPosition: splitter position + aPoint
				andCriteria: [:m | m isTextView] }
			allSatisfy: [:m | m morphs notEmpty and: [
					m model inheritsFromAnyIn: {SSCellModel. SSHeaderModel}]]]])
		morphs