toolbuilder
createSpecWith: aBuilder

	^ (morph := SSHybridTextMorph new)
		on: self
			text: #contents
			accept: #contents:
			output: #outputContents
			edit: #editContents:
			menu: #codePaneMenu:shifted:;
		"minimumExtent: self tool minimumCellExtent;"
		refreshText;
		yourself