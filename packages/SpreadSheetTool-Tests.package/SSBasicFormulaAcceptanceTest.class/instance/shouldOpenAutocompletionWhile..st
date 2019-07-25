tools
shouldOpenAutocompletionWhile: aBlock

	| completion |
	completion := self findAutocompletionsOpenedWhile: aBlock.
	self assert: completion isPositive.