toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		editText: #editContents:;
		setText: #acceptContents:;
		softLineWrap: true;
		minimumExtent: self parent minimumCellExtent;
		yourself