tools
findHeadersFor: dimension in: aWindow

	dimension assert: [#(rows columns) includes: dimension].
	^ self
		findHeadersWithMin: (
			dimension = #rows ifTrue: #x ifFalse: #y)
		in: aWindow