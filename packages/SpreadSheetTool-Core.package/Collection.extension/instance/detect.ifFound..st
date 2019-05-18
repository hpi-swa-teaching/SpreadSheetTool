*SpreadSheetTool-Core-enumerating
detect: aBlock ifFound: foundBlock
	"foundBlock takes one argument, the found object."
	self 
		do: [ :element | (aBlock value: element) ifTrue: [ ^foundBlock value: element ] ].
