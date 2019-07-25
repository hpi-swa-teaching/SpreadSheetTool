searching
findPossibleConstructors

	^ (self modelClass class allSelectors sorted storeFirstAll:
		(self modelClass class allMethodsInCategory: 'instance creation'))
			select: [:selector | self class possibleConstructorNumArgsz
				includes: selector numArgs]