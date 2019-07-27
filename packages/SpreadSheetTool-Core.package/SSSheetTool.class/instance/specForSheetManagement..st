toolbuilder
specForSheetManagement: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: (self specForNewSheetButton: aBuilder);
		addChild: (self specForOpenSheetButton: aBuilder);
		addChild: (self specForSaveSheetButton: aBuilder);
		addChild: (self specForDeleteSheetButton: aBuilder);
		alignChildrenInColumns: 2;
		yourself