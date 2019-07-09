*SpreadSheetTool-Core-private
compileCue: aCue ifFail: failBlock
	"Compiles the cue source into a parse tree, then generates code into
	a method. Finally, the compiled method is invoked from here via 	withArgs:executeMethod:, hence the system no longer creates Doit method
	litter on errors."

	| methodNode method args |
	methodNode := self compileCue: aCue noPattern: true ifFail: [^failBlock value].

	method := self interactive
				ifTrue: [methodNode generateWithTempNames]
				ifFalse: [methodNode generate].

	args := cue context ifNil: [#()] ifNotNil: [{cue context}].
	^ [cue receiver
		withArgs: args
		executeMethod: method]