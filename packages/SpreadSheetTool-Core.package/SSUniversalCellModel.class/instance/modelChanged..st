nested model
modelChanged: anAspect

	self manipulateSubject: anAspect.
	self withoutObservingDo: [self changed: #output with: self].