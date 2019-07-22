accessing
context

	^ context ifNil: [context :=
		(Context newForMethod: self templateMethod)
			activateMethod: self templateMethod
			withArgs: self evaluationArgs
			receiver: self receiver
			class: self receiver class]