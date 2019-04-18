as yet unclassified
createPanelSpecForCells: aCollection with: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: aCollection;
		frame: (0@1/5 corner: 1@1);
		yourself