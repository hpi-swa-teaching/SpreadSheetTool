toolbuilder
createSpecWith: aBuilder

	^ (morph := SSCellMorph new)
		on: self
			text: #inputContents
			edit: #inputContents:
			output: #outputContents
			generator: #saveContents:;
		minimumExtent: self parent minimumCellExtent;
		yourself