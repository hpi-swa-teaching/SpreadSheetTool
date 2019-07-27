tools
findSplittersByCriteria: aBlock adjacentDelta: aPoint

	^ (self subject
		findByClass: ProportionalSplitterMorph
		andCriteria: [:splitter | (aBlock value: splitter) and: [
			| adjacents |
			adjacents :=
			{	self subject
					findIntersecting: (splitter bounds translateBy: aPoint)
					byCriteria: #isTextView.
				self subject
					findIntersecting: (splitter bounds translateBy: aPoint negated)
					byCriteria: #isTextView }.
			adjacents allSatisfy: #isPositive]])
		morphs