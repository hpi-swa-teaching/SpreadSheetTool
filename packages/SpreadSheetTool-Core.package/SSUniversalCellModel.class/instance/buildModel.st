toolbuilder
buildModel

	| builder view frame |
	builder := SSToolBuilder new.
	view := self withoutObservingDo: [
		self model perform: modelConfig builderSelector with: builder].
	frame := LayoutFrame fractions: (0 @ 0 extent: 1 @ 1).
	view layoutFrame: frame.
	^ {builder build: view}