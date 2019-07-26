toolbuilder
specForDimensionControlInDimension: aDimension selector: aSelector with: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		addChild: (self
			specForLabel: aDimension ssWithFirstCharacterUppercase, $:
			with: aBuilder);
		addChild: ((SSNumericPropertyHolder
			owner: self
			getProperty: aSelector
			setProperty: (aSelector , ':') asSymbol)
				createSpecWith: aBuilder
				helpText: 'Number of ', aDimension);
		yourself