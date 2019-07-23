toolbuilder
open

	| builder |
	builder := ToolBuilder default. 
	builder open: (self buildWith: builder).
	self postInitialize.