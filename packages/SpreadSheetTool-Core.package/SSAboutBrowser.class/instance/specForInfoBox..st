toolbuilder
specForInfoBox: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: {
			(self specForInfoText: aBuilder)
				frame: (0 @ 0 extent: 2 / 3 @ 1);
				yourself.
			(self specForBrowser: aBuilder)
				frame: (2 / 3 @ 0 extent: 1 / 3 @ 1);
				yourself };
		wantsResizeHandles: true;
		yourself