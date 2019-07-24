assertions
assertRowHeadersSortedWithoutFirst: numberToSkip
	
	| headers |
	headers := self findHeadersFor: #rows.
	
	self assert: [(headers
		collect: [:header | header text asString asNumber])
			isSorted].