toolbuilder
buildCell

	| builder specs |
	builder := ToolBuilder default.
	specs := #(specForButtonPanel: specForWidget:)
		collect: [:selector | self perform: selector with: builder].
	^ specs collect: [:spec | spec buildWith: builder]