as yet unclassified
open

	| builder |
	builder := ToolBuilder default.
	^ builder open: (self buildWith: builder)