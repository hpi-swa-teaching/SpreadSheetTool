toolbuilder
specForDimensionControlInDimension: aDimension selector: aSelector with: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			(self specForLabel: aDimension ssWithFirstCharacterUppercase, $: with: aBuilder).
			((SSNumericPropertyFieldModel
				parent: self
				getProperty: aSelector
				setProperty: (aSelector , ':') asSymbol)
					createSpecWith: aBuilder
					helpText: 'Number of ', aDimension) };
		yourself