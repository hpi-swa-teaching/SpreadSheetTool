as yet unclassified
models

	^ Model withAllSubclasses select: [:class |
		(self findAllBuilderSelectorsFor: class) notEmpty]