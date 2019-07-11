as yet unclassified
easterEgg: foo

	self containingWindow allMorphs
		detect: #isImageMorph
		ifFound: [:m |
		0 to: 360 by: 5 do: [:deg | m rotationDegrees: deg.
			m redraw.
			2 milliSeconds wait.]]
		ifNone: [].