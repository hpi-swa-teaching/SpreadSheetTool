toolbuilder
createSpecForButtonPanelWith: aBuilder

	| children |
	children := { 
		self createSpecForNewSheetButtonWith: aBuilder.
		self createSpecForDistributeRowsButtonWith: aBuilder.
		self createSpecForDistributeColumnsButtonWith: aBuilder }.
	self setColumnByColumnLayoutForSpecs: children.	
	^ aBuilder pluggablePanelSpec new
		children: children;
		yourself
	