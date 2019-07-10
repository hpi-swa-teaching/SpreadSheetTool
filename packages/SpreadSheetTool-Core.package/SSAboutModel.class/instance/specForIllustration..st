as yet unclassified
specForIllustration: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {self
			specForMorph: CTResourceContainer default squeakLogo asMorph
			with: aBuilder};
		yourself