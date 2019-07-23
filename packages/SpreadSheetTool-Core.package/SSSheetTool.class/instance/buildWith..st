toolbuilder
buildWith: aBuilder

	| spec window |
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: self class longApplicationName;
		minimumExtent: self minimumExtent;
		children: {
			self specForMenuBar: aBuilder.
			self specForMainPanel: aBuilder };
		yourself.
	window := aBuilder build: spec.
	steppingWindow := window.
	contentModels computeAll.
	hasUnsavedChanges := false.
	^ window