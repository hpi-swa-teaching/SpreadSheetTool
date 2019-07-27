searching
findPossibleConstructors

	^ (self modelClass class allSelectors sorted storeFirstAll:
		(self modelClass class allMethodsInCategory: #'instance creation'))
			select: [:selector | self possibleConstructorNumArgsz
				includes: selector numArgs]