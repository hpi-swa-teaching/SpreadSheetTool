toolbuilder
createSpecForRowHeaderWith: aBuilder atIndex: aRowIndex

	^ ((SSHeaderModel rowHeaderForIndex: aRowIndex parent: self)
		createSpecWith: aBuilder)
			frame: (self calculateFrameForItemAtColumn: 0 atRow: aRowIndex)