toolbuilder
specForButtonPanel: aBuilder

	| spec |
	spec := aBuilder pluggablePanelSpec new
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 corner: 0 @ self buttonHeight));
		layout: #horizontal;
		yourself.
	self containsFormulaModel ifFalse: [
		spec
			addChild: (self specForGetterButton: aBuilder);
			addChild: (self specForSetterButton: aBuilder);
			addChild: (aBuilder pluggableSpacerSpec new)].
	spec
		addChild: (self specForConfigurationButton: aBuilder);
		addChild: (self specForModelButton: aBuilder).
	^ spec