tools
enticeAutocompletionFor: aMorph

	^ self findAutocompletionsOpenedWhile: [
		aMorph sendKeys: '. Obje']