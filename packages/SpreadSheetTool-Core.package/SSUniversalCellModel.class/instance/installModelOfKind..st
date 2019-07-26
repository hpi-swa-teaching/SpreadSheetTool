nested model
installModelOfKind: aClass

	self
		installModelOfKind: aClass
		withConfig: (SSModelConfiguration at: aClass).