toolbuilder
createPanelSpecForCells: aCollection with: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: aCollection;
		frame: (0 @ self menuHeight corner: 1 @ 1);
		wantsResizeHandles: true;
		yourself