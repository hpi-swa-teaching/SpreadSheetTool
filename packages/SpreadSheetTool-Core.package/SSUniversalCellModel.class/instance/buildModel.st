toolbuilder
buildModel

	| builder view |
	builder := SSToolBuilder new.
	view := self withoutObservingDo: [
		self model perform: modelConfig builderSelector with: builder].
	view layoutFrame: (LayoutFrame fractions: (0 @ 0 extent: 1 @ 1)).
	visibleModel := self model.
	^ { builder build: view }