widgets required
buildPluggableWindow: aSpec

	| spec |
	spec := aSpec copy.
	spec wantsResizeHandles ifNil: [spec wantsResizeHandles: true].
	^ self buildPluggablePanel: spec