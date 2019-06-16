tools
findHeadersWithMin: aCoordinate

	| allHeaders minCoordinate |
	allHeaders := self findHeaders morphs.
	minCoordinate := (allHeaders collect: [:header | header position in: aCoordinate]) min.
	^ (allHeaders select: [:header | (header position in: aCoordinate) = minCoordinate])
		sorted: [:aHeader :anotherHeader | aHeader position r <= anotherHeader position r]