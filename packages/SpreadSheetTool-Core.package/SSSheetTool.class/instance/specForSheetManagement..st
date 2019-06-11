toolbuilder
specForSheetManagement: aBuilder

	| children |
	children := { 
		self specForNewSheetButton: aBuilder.
		self specForOpenSheetButton: aBuilder.
		self specForSaveSheetButton: aBuilder.
		self specForDeleteSheetButton: aBuilder }.
	self align: children inColumns: 2.
	^ aBuilder pluggablePanelSpec new
		children: children;
		yourself