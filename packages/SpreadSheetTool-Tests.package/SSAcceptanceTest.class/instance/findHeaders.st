tools
findHeaders

	^ self subject findByCriteria: [:morph | morph isTextView
		and: [morph model isKindOf: SSHeaderModel]]