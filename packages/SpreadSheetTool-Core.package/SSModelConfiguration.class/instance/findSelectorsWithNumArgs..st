searching
findSelectorsWithNumArgs: n

	^ self modelClass allSelectors sorted
		select: [:selector | selector numArgs = n]