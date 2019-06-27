toolbuilder
specForLabel: aLabel with: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: (aLabel asMorph
			layoutFrame: (LayoutFrame fractions: ((0 @ 0.2) corner: (1 @ 0.2)));
			yourself);
		children: #asOrderedCollection;
		yourself