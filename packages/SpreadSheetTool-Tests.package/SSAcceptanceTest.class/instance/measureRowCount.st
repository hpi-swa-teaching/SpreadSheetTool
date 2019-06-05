tools
measureRowCount

	^ (self findCells morphs 
		groupBy: [:aCell | aCell position y]) size