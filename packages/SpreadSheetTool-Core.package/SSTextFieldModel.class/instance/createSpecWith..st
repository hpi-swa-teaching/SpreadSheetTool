toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		editText: #contents:;
		softLineWrap: true;
		minimumExtent: self parent minimumCellExtent;
		yourself