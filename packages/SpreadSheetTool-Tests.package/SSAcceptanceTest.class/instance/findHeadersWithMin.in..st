tools-navigating
findHeadersWithMin: aCoordinate in: aWindow

	| allHeaders minCoordinate |
	allHeaders := (self findHeadersIn: aWindow) morphs.
	minCoordinate := (allHeaders collect: [:header | header position in: aCoordinate]) min.
	^ (allHeaders select: [:header | (header position in: aCoordinate) = minCoordinate])
		sorted: [:aHeader :anotherHeader | aHeader position r <= anotherHeader position r]