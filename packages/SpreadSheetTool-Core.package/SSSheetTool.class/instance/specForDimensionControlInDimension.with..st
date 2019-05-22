toolbuilder
specForDimensionControlInDimension: aDimension with: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			(aBuilder pluggableButtonSpec new
				label: aDimension, 's:';
				enabled: false).
			((SSPropertyFieldModel newWithParent: self)
				getProperty: (aDimension, 'Count') asSymbol;
				setProperty: (aDimension, 'Count:') asSymbol)
					createSpecWith: aBuilder
					helpText: aDimension, 's' }