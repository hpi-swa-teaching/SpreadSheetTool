tools
shouldntShowAutocompletion: aMorph

	| completion |
	completion := self enticeAutocompletionFor: aMorph.
	self deny: completion isPositive