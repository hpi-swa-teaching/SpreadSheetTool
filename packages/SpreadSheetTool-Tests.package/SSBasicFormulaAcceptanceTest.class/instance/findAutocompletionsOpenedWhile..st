tools
findAutocompletionsOpenedWhile: aBlock

	^ self findMorphsOpenedWhile: aBlock from: [self findAllAutocompletions]