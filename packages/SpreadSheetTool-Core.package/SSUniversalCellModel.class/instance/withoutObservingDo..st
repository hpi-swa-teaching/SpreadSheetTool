dependencies
withoutObservingDo: aBlock
	"As we use the model both for getting and setting a value, we may not observe it
	while setting the content to avoid an infinite loop"

	^ [	self model removeDependent: self.
		aBlock value]
	ensure: [
		self model addDependent: self]