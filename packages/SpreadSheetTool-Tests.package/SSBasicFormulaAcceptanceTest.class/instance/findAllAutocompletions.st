tools
findAllAutocompletions

	^ (({ OMenuMorph. ECMenuMorph } collect: #allInstances) fold: #,)
		select: [:morph | morph owner notNil]