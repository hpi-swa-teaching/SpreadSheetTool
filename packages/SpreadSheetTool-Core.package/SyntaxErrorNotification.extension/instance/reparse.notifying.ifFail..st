*SpreadSheetTool-Core-accessing
reparse: aString notifying: aController ifFail: failBlock
	"Try to parse if aString has correct syntax, but do not evaluate/install any code.
	In case of incorrect syntax, execute failBlock and let a Compiler interact with the requestor.
	In case of correct syntax, set newSource."
	inClass newCompiler compile: aString in: inContext to: inClass notifying: aController ifFail: failBlock.
	newSource := aString