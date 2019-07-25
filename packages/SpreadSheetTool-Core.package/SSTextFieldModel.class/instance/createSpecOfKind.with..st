toolbuilder
createSpecOfKind: aKind with: aBuilder

	^ (aBuilder in: aKind) new
		model: self;
		getText: #contents;
		setText: #contents:;
		yourself