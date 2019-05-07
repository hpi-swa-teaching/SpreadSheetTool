toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		setText: #contents:notifying:;
		minimumExtent: self parent minimumCellExtent;
		yourself