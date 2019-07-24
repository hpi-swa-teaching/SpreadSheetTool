accessing
contextClass

	^ Smalltalk at: #Context ifAbsent: [Smalltalk at: #MethodContext]