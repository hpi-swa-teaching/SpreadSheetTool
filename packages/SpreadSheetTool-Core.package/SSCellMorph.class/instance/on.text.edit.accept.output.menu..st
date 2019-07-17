accessing
on: anObject text: getTextSel edit: editTextSel accept: acceptSel output: getOutputSel menu: getMenuSel

	self model: anObject.
	getTextSelector := getTextSel.
	editTextSelector := editTextSel.
	setTextSelector := acceptSel.
	getOutputSelector := getOutputSel.
	getMenuSelector := getMenuSel.