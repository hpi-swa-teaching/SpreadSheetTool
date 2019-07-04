toolbuilder
createSpecWith: aBuilder

	^ (morph := SSCellMorph new)
		on: self
			text: #contents
			edit: #editContents:
			accept: #acceptContents:
			output: #outputContents;
		minimumExtent: self parent minimumCellExtent;
		refreshText;
		yourself