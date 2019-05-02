toolbuilder
createSpecWith: aBuilder atFrame: aFrame withMinimumExtent: aPoint

	^ aBuilder pluggableTextSpec new
		model: self;
		setText: #contents:notifying:;
		getText: #contents;
		frame: aFrame;
		minimumExtent: aPoint;
		yourself