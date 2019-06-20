tools
findHeadersFor: dimension

	dimension assert: [#(rows columns) includes: dimension].
	^ self findHeadersWithMin: (dimension = #rows
		ifTrue: #x
		ifFalse: #y)