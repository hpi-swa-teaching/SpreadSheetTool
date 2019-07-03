as yet unclassified
models

	^ Model withAllSubclasses select: [:class | class allSelectors
		anySatisfy: [:selector | selector numArgs = 1]]