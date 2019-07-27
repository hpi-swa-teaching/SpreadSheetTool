toolbuilder
specForHelp: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: (self specForAboutButton: aBuilder);
		layout: #vertical;
		yourself