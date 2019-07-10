as yet unclassified
specForMorph: aMorph with: aBuilder

	self flag: #todo. "Duplication!"
	^ aBuilder pluggablePanelSpec new
		model: aMorph;
		children: #asOrderedCollection;
		yourself