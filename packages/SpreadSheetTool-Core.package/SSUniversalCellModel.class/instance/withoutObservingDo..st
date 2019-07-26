dependencies
withoutObservingDo: aBlock

	^ [	self model removeDependent: self.
		aBlock value]
	ensure: [
		self model addDependent: self]