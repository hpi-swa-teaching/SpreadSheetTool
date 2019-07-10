initialize-release
initializeModelForClass: aClass

	self
		initializeModelForClass: aClass
		withConfig: (SSModelConfiguration lookupOrDefaultForClass: aClass).