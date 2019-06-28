tools
findAllAutocompletions

	^ ((self autocompletionClasses collect: #allInstances) fold: #,)
		select: [:morph | morph owner notNil]