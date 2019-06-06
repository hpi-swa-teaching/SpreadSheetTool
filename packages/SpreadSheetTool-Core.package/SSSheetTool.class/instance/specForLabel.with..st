toolbuilder
specForLabel: aLabel with: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: aLabel;
		children: #asMorphCollection;
		yourself