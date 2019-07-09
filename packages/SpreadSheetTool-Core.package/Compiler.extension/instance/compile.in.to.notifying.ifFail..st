*SpreadSheetTool-Core-public access
compile: textOrStream in: aContext to: receiver notifying: aRequestor ifFail: failBlock
	
	| theClass |
	theClass := self classForReceiver: receiver context: aContext.
	^self
		compileCue: (CompilationCue
			source: textOrStream
			context: aContext
			receiver: receiver
			class: theClass
			environment: theClass environment
			requestor: aRequestor)
		ifFail: failBlock