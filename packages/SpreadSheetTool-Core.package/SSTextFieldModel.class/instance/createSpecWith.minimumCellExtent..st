toolbuilder
createSpecWith: aBuilder minimumCellExtent: aPoint

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #contents;
		setText: #contents:notifying:;
		minimumExtent: aPoint;
		yourself