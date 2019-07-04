tools
findAllAutocompletions

	self autocompletionClasses ifEmpty: [
		self inconclusive: 'No autocompletion in image found'].
	^ (self autocompletionClasses collectAll: #allInstances)
		select: [:morph | morph owner notNil]