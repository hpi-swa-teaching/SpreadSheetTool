toolbuilder
open

	| builder window |
	builder := ToolBuilder default. 
	window := builder open: (self buildWith: builder).
	self postInitialize.
	^ window