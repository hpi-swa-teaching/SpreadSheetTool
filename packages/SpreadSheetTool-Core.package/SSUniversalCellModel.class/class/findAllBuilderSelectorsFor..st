as yet unclassified
findAllBuilderSelectorsFor: aClass

	^ aClass allSelectors asArray
		select: [:selector | (selector numArgs = 1)
			"and: ['builder' match: (
				(aClass lookupSelector: selector) methodClass
					formalParametersAt: selector) singleOne]"]