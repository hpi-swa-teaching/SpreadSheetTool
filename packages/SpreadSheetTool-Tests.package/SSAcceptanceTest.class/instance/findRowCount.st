tools
findRowCount

	^ (self findCells morphs 
		groupBy: [:aCell | aCell position y]) size