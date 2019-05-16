toolbuilder
createSpecForColumnHeaderWith: aBuilder atIndex: aColumnIndex

	^ ((SSColumnHeaderModel index: aColumnIndex)
		createSpecWith: aBuilder)
			frame: (self calculateFrameForItemAtColumn: aColumnIndex atRow: 0)