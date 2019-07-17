tools
findCellsIn: aWindow

	^ (1 to: self rowCount) collectAll: [:row |
		1 to: self columnCount collect: [:column |
			self findCellAt: column @ row in: aWindow]]