tools
measureColumnCount

	^ (self findCells morphs 
		groupBy: [:aCell | aCell position x]) size