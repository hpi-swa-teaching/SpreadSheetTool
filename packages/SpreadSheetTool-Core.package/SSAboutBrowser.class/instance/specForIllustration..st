toolbuilder
specForIllustration: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: { aBuilder
			specForMorph: (self squeakLogo
				scaledIntoFormOfSize: self illustrationWidth asPoint
					* 6 / 5 "For the special overhanging effect. Squeak is just too wonderful to fit in any regular bounds!
					(It's literally 'outstanding')") asMorph };
		yourself