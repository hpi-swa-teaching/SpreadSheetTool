tools
findColumnCount

	^ (self findCells morphs 
		groupBy: [:aCell | aCell position x]) size