toolbuilder
specForMorph: aMorph with: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: aMorph;
		children: #asOrderedCollection;
		yourself