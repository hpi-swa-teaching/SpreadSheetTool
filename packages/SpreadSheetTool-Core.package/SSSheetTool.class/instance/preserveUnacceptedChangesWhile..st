interaction
preserveUnacceptedChangesWhile: aBlock

	| unacceptedChanges |
	unacceptedChanges := contentModels cellsCollect: #unacceptedChangesOrNil.
	aBlock value.
	unacceptedChanges withIndicesDo: [:changes :row :column |
		changes ifNotNil: [contentModels atRow: row atColumn: column ifPresent: [:model |
			model unacceptedChanges: changes]]].