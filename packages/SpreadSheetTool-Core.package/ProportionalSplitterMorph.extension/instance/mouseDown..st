*SpreadSheetTool-Core-events
mouseDown: anEvent 
	"If the user manually drags me, don't override him with auto positioning."
	
	"Looks like a bug, so I disabled this line. ct"
	"https://lists.hpi.uni-potsdam.de/private/swa19/2019-May/000145.html"
	"self setProperty: #fullDelta toValue: 0@0."
	
	anEvent redButtonChanged
		ifTrue: [ self withSiblingSplittersDo: [ : each | each stopStepping ] ]
		ifFalse:
			[ anEvent shiftPressed
				ifTrue: [ self startStepping ]
				ifFalse:
					[ self startStepping.
					self withSiblingSplittersDo: [ : each | each startStepping ] ] ].

	^ super mouseDown: anEvent