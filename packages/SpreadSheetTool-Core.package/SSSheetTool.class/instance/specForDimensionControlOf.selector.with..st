toolbuilder
specForDimensionControlOf: rowsOrColumns selector: aSelector with: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		addChild: (self
			specForLabel: rowsOrColumns ssWithFirstCharacterUppercase, $:
			with: aBuilder);
		addChild: ((SSNumericPropertyHolder
			owner: self
			getProperty: aSelector
			setProperty: (aSelector , ':') asSymbol)
				createSpecWith: aBuilder
				helpText: 'Number of ', rowsOrColumns);
		yourself