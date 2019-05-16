toolbuilder
createSpecForOriginWith: aBuilder

	^ ((SSOriginHeaderModel new)
		createSpecWith: aBuilder)
			frame: (self calculateFrameForItemAtColumn: 0 atRow: 0)