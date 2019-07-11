toolbuilder
specForIllustration: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {self
			specForMorph: (self squeakLogo scaledIntoFormOfSize: self illustrationWidth asPoint) asMorph
			with: aBuilder};
		yourself