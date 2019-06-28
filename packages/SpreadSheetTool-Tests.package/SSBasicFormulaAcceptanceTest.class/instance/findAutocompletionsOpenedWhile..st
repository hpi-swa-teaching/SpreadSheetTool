tools
findAutocompletionsOpenedWhile: aBlock

	| allCompletions newCompletions |
	allCompletions := self findAllAutocompletions.
	aBlock value.
	newCompletions := self findAllAutocompletions
		copyWithoutAll: allCompletions.
	newCompletions do: #hide.
	^ newCompletions