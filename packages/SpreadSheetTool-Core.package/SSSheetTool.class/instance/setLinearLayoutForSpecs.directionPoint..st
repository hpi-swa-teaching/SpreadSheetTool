toolbuilder
setLinearLayoutForSpecs: aCollection directionPoint: aDirectionPoint

	| scale |
	scale := aCollection size reciprocal.
	aCollection withIndexDo: [:aSpec :index |
		aSpec
			frame: aDirectionPoint * (index - 1 * scale)
			extent: aDirectionPoint * scale + (1 @ 1) - aDirectionPoint].