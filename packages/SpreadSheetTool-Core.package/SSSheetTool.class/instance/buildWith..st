toolbuilder
buildWith: aBuilder

	| spec window |
	spec := self buildWindowWith: aBuilder specs: {
		(LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 corner: 0 @ self menuHeight))
				-> [self specForMenuBar: aBuilder].
		(LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ self menuHeight corner: 0 @ 0))
				-> [self specForMainPanel: aBuilder] }.
	spec minimumExtent: self minimumExtent.
	window := aBuilder build: spec.
	steppingWindow := window.
	hasUnsavedChanges := false.
	^ window