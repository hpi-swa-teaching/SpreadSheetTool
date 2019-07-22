toolbuilder
createSpecWith: aBuilder

	^ morph := SSCellMorph new
		on: self
			text: #contents
			accept: #contents:
			output: #outputContents
			edit: #editContents:
			menu: #codePaneMenu:shifted:;
		minimumExtent: self parent minimumCellExtent;
		refreshText;
		yourself