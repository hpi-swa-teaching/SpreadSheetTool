initialize-release
initializeDefaultModelFor: aClass

	self
		initializeModelForClass: aClass
		withConfig: (SSModelConfiguration at: aClass).