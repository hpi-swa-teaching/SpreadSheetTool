tools
shouldShowAutocompletion: aMorph

	| completion |
	completion := self enticeAutocompletionFor: aMorph.
	self assert: completion isPositive.