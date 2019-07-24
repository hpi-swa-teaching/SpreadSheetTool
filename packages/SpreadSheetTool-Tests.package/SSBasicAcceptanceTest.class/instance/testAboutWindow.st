testing
testAboutWindow

	| button window |
	button := self subject findByLabelFilter: 'About*'.
	self assert: button isUnique.
	window := self findWindowOpenedWhile: [button click].
	self assert: window isUnique.
	self assert: ['about*' match: window label].