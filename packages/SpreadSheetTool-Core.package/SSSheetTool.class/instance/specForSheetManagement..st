toolbuilder
specForSheetManagement: aBuilder

	| children |
	children := { 
		self specForNewSheetButton: aBuilder.
		self specForOpenSheetButton: aBuilder.
		self specForSaveSheetButton: aBuilder }.
	self setVerticalLayoutForSpecs: children.	
	^ aBuilder pluggablePanelSpec new
		children: children;
		yourself
	