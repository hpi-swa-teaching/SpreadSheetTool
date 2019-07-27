toolbuilder
specForInfoBox: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: ((self specForInfoText: aBuilder)
			frame: (0 @ 0 extent: 2 / 3 @ 1);
			yourself);
		addChild: ((self specForBrowser: aBuilder)
				frame: (2 / 3 @ 0 extent: 1 / 3 @ 1);
				yourself);
		wantsResizeHandles: true;
		yourself