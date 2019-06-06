toolbuilder
specForDimensionControlInDimension: aDimensionName selector: aSelector with: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			(aBuilder pluggableButtonSpec new
				label: aDimensionName;
				enabled: false).
			(SSPropertyFieldModel
				parent: self
				getProperty: aSelector
				setProperty: (aSelector, ':') asSymbol)
					createSpecWith: aBuilder
					helpText: aDimensionName }