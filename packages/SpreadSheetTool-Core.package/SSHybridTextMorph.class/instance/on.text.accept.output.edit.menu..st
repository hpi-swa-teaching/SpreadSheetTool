accessing
on: anObject text: getTextSel accept: acceptSel output: getOutputSel edit: editTextSel menu: getMenuSel

	getOutputSelector := getOutputSel.
	self on: anObject text: getTextSel accept: acceptSel readSelection: nil menu: getMenuSel.
	self editTextSelector: editTextSel.
	getMenuSelector := getMenuSel.