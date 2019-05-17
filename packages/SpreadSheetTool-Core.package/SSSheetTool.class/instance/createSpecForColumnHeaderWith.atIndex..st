toolbuilder
createSpecForColumnHeaderWith: aBuilder atIndex: aColumnIndex

	^ ((SSHeaderModel columnHeaderForIndex: aColumnIndex parent: self)
		createSpecWith: aBuilder)
			frame: (self calculateFrameForItemAtColumn: aColumnIndex atRow: 0)