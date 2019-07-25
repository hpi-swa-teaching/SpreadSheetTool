toolbuilder
colors

	| normal |
	colors ifNotNil: [^ colors].
	normal := self userInterfaceTheme get: #color for: PluggableTextMorph.
	colors := Dictionary new.
	colors
		at: nil put: normal;
		at: SSCellGetterFormula put: (normal mixed: 0.85 with:
			((self userInterfaceTheme get: #removeTextAttributes for: TextDiffBuilder)
				detect: [:att | att isKindOf: TextColor]
				ifFound: #color
				ifNone: [Color blue]));
		at: SSCellSetterFormula put: (normal mixed: 0.85 with:
			((self userInterfaceTheme get: #insertTextAttributes for: TextDiffBuilder)
				detect: [:att | att isKindOf: TextColor]
				ifFound: #color
				ifNone: [Color red])).
	^ colors