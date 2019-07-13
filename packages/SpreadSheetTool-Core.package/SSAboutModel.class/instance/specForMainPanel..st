toolbuilder
specForMainPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: {
			(self specForHelpBox: aBuilder)
				frame: (0 @ 0 corner: 1 @ (2 / 5));
				yourself.
			(self specForAboutBox: aBuilder)
				frame: (0 @ 2 / 5 corner: 1 @ 1);
				yourself };
		wantsResizeHandles: true;
		yourself