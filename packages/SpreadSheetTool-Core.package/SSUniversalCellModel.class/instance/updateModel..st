nested model
updateModel: anObject

	self withoutObservingDo: [self displayAspect: anObject].
	self changed: #output with: self.