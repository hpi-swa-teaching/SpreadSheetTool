assertions
assertColumnHeadersOrderWithoutFirst: numberToSkip
	
	| headers |
	headers := self findHeadersFor: #columns.
	
	self assert: [(headers
		byIndexReject: [:index | index <= numberToSkip]
		thenCollect: [:header | Number readFrom: header text asString base: 36])
			isSorted].