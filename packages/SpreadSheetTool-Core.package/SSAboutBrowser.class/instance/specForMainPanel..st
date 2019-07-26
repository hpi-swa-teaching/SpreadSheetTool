toolbuilder
specForMainPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: ((self specForInfoBox: aBuilder)
			frame: (0 @ 0 corner: 1 @ (2 / 5));
			yourself);
		addChild: ((self specForAboutBox: aBuilder)
			frame: (0 @ 2 / 5 corner: 1 @ 1);
			yourself);
		wantsResizeHandles: true;
		yourself