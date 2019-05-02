toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: self class applicationName;
		extent: self defaultExtent;
		minimumExtent: self minimumExtent;
		children: {
			self createSpecForDimensionFieldsWith: aBuilder.
			self createSpecForMainPanelWith: aBuilder };
		yourself)