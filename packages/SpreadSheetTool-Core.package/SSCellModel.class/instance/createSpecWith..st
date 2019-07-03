toolbuilder
createSpecWith: aBuilder

	^ (morph := SSCellMorph new)
		on: self
			text: #contents
			edit: #editContents:
			output: #outputContents
			generator: #acceptContents;
		minimumExtent: self parent minimumCellExtent;
		refreshText;
		yourself