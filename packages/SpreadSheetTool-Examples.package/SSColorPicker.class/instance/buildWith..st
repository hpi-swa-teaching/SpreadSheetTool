toolbuilder
buildWith: aBuilder

	^ (morph := NewColorPickerMorph new)
		setTarget: self originalColor: self color setColorSelector: #privateColor:;
		hasDropShadow: false;
		cornerStyle: #square;
		yourself