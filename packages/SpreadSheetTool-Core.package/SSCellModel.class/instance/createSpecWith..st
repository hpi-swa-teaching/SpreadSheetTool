as yet unclassified
createSpecWith: aBuilder

	^ (super createSpecWith: aBuilder)
		setText: #contents:notifying:;
		yourself