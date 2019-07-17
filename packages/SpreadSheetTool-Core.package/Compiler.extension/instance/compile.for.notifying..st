*SpreadSheetTool-Core-public access
compile: textOrString for: anObject notifying: aController
	"Compile and execute the argument, textOrString with respect to the class 
	of anObject. If a compilation error occurs, notify aController."

	^ self
		compile: textOrString
		in: nil
		to: anObject
		notifying: aController
		ifFail: [^nil]