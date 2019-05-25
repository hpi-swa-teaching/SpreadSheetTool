toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		setText: #contents:notifying:;
		softLineWrap: true;
		minimumExtent: self parent minimumCellExtent;
		yourself