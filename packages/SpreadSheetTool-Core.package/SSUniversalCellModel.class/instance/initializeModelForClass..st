initialize-release
initializeModelForClass: aClass

	self
		initializeModelForClass: aClass
		withConfig: (SSModelConfiguration lookupOrDefault: aClass).