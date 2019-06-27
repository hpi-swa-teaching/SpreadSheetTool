tools
findAutoEvaluateToggle

	^ (self subject findByClass: PluggableCheckBoxMorph andName: 'auto evaluate')
		findByKind: ThreePhaseButtonMorph