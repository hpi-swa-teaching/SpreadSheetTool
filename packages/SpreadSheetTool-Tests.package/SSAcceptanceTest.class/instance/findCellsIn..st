tools-navigating
findCellsIn: aWindow

	^ ((1 to: (self measureRangeFor: #rows)) collectAll: [:row |
		1 to: (self measureRangeFor: #columns) collect: [:column |
			column @ row -> (self findCellAt: column @ row in: aWindow)]])
				as: Dictionary