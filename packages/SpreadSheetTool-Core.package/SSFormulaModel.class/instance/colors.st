toolbuilder
colors

	| normal |
	colors ifNotNil: [^ colors].
	normal := self userInterfaceTheme get: #color for: PluggableTextMorph.
	colors := Dictionary new.
	colors
		at: nil put: normal;
		at: SSCellGetterFormula put:
			(normal mixed: 0.85 with: Color blue);
		at: SSCellSetterFormula put:
			(normal mixed: 0.85 with: Color red).
	^ colors