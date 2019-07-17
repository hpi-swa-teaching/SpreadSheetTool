toolbuilder
specForHelp: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #vertical;
		addChild: (self specForAboutButton: aBuilder);
		yourself