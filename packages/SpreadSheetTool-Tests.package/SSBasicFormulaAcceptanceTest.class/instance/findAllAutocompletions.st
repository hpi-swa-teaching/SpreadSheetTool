tools
findAllAutocompletions

	self autocompletionClasses ifEmpty: [
		self inconclusive: 'No Autocompletion package in image found'].
	^ (self autocompletionClasses collectAll: #allInstances)
		select: #isInWorld