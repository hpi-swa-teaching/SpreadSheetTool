toolbuilder
specForDimensionControlInDimension: aDimensionName selector: aSelector with: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			(self specForLabel: aDimensionName ssWithFirstCharacterUppercase, $: with: aBuilder).
			((SSPropertyFieldModel
				parent: self
				getProperty: aSelector
				setProperty: (aSelector , ':') asSymbol)
					createSpecWith: aBuilder
					helpText: 'Number of ', aDimensionName)
		}