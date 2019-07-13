toolbuilder
specForIllustration: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {self
			specForMorph: (self squeakLogo
				scaledIntoFormOfSize: self illustrationWidth asPoint
					* 6 / 5 "For the special overhanging effect. Squeak is just too wonderful to fit in any regular bounds!
					(literally 'outstanding')") asMorph
			with: aBuilder};
		yourself