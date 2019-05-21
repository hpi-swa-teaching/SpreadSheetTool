toolbuilder
setLinearLayoutForSpecs: aCollection directionPoint: aDirectionPoint

	| scale |
	scale := aCollection size reciprocal.
	aCollection zip: ((0 to: 1 by: scale) copyWithout: 1) do: [:aSpec :progress |
		aSpec
			frame: aDirectionPoint * progress
			extent: aDirectionPoint * scale + (1 @ 1 * (1 @ 1 - aDirectionPoint)).
		Transcript showln: aSpec frame].