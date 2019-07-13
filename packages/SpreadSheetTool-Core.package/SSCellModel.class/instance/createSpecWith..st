toolbuilder
createSpecWith: aBuilder

	^ (morph := SSCellMorph new)
		on: self
			text: #contents
			edit: #editContents:
			accept: #acceptContents:
			output: #outputContents
			menu: #codePaneMenu:shifted:;
		minimumExtent: self parent minimumCellExtent;
		refreshText;
		yourself