toolbuilder
createSpecForRowHeaderWith: aBuilder atIndex: aRowIndex

	^ ((SSRowHeaderModel index: aRowIndex)
		createSpecWith: aBuilder)
			frame: (self calculateFrameForItemAtColumn: 0 atRow: aRowIndex)