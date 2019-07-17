tools
findCellsIn: aWindow

	^ (1 to: (self measureRangeFor: #rows)) collectAll: [:row |
		1 to: (self measureRangeFor: #columns) collect: [:column |
			self findCellAt: column @ row in: aWindow]]