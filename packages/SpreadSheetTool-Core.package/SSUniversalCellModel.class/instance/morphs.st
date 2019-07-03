toolbuilder
morphs

	| builder view frame |
	builder := ToolBuilder default.
	view := self model perform: self findBuilderSelector with: builder.
	frame := LayoutFrame fractions: (0 @ 0 extent: 1 @ 1).
	(view isKindOf: ToolBuilderSpec)
		ifTrue: [view frame: frame]
		ifFalse: [view layoutFrame: frame].
	^ {builder build: view}