toolbuilder
buildWith: aBuilder

	^ morph := NewColorPickerMorph
		on: self
		originalColor: self color
		setColorSelector: #privateColor: