tools
findSplittersByCriteria: aBlock withPositionDeltaForAdjacentCells: aPoint

	^ (self subject
		findByClass: ProportionalSplitterMorph
		andCriteria: [:splitter | (aBlock value: splitter) and: [
			| adjacents |
			adjacents := { self subject
				findByPosition: splitter position - aPoint
				andCriteria: #isTextView.
			   self subject
				findByPosition: splitter position + aPoint
				andCriteria: #isTextView}.
			(adjacents allSatisfy: #isPositive) and: [
				(adjacents select: [:m | m model isKindOf: SSHeaderModel]) size = 2]]])
		morphs