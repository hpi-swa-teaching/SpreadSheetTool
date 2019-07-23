accessing
context

	^ context ifNil: [context :=
		(self contextClass newForMethod: self templateMethod)
			activateMethod: self templateMethod
			withArgs: self evaluationArgs
			receiver: self receiver
			class: self receiver class]