accessing
on: anObject text: getTextSel edit: editTextSel accept: acceptSel output: getOutputSel

	self model: anObject.
	getTextSelector := getTextSel.
	editTextSelector := editTextSel.
	setTextSelector := acceptSel.
	getOutputSelector := getOutputSel.