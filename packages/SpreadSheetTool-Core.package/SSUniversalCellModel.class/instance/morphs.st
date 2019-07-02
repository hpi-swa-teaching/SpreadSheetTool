as yet unclassified
morphs

	| builder view |
	builder := ToolBuilder default.
	view := self model buildWith: builder.
	(view isKindOf: ToolBuilderSpec)
		ifTrue: [view frame: 0 @ 0 extent: 1 @ 1]
		ifFalse: [view layoutFrame: (LayoutFrame fractions: (0 @ 0 extent: 1 @ 1))].
	^ {builder build: view}