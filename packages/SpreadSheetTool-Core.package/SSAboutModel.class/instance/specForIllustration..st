toolbuilder
specForIllustration: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {self
			specForMorph: (self squeakLogo
				scaledIntoFormOfSize: self illustrationWidth asPoint
					* 5 / 3 "For the special overhanging effect. Squeak is just too wonderful to fit in any regular bounds!")
					asMorph
			with: aBuilder};
		yourself