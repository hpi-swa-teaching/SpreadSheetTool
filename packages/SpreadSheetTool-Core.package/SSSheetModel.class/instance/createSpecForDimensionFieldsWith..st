toolbuilder
createSpecForDimensionFieldsWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: {
			(SSPropertyField new
				contents: self columnCount asString; 
				createSpecWith: aBuilder 
					atFrame: (
						(0 @ 0) corner: 1 @ (1 / 2))).
			(SSPropertyField new
				contents: self rowCount asString;  
				createSpecWith: aBuilder
					atFrame: (
						(0 @ 1 / 2) corner: 1 @ 1)) };
		frame: (0 @ 0 extent: 1 / 6 @ self menuHeight);
		yourself
	