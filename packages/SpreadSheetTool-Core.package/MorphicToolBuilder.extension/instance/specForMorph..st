*SpreadSheetTool-Core-widgets
specForMorph: aMorph

	^ self pluggablePanelSpec new
		model: aMorph;
		children: #asOrderedCollection;
		yourself