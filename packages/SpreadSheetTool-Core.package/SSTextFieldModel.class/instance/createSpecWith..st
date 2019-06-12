toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		getText: #contents;
		editText: #contentsEdited:;
		setText: #contentsAccepted:;
		softLineWrap: true;
		minimumExtent: self parent minimumCellExtent;
		yourself