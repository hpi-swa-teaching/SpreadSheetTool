testing
testAboutWindowBrowser

	| docMorph list docText |
	self wantsToTest: (self findWindowOpenedWhile: [
		(self subject findByLabelFilter: 'About*') click]).
	docMorph := self subject findByCriteria: [:morph |
		morph isTextView and: ['*documentation*' match: morph text]].
	
	list := self subject findByCriteria: #isPluggableListMorph.
	docText := docMorph read.
	list click.
	self deny: docText equals: docMorph read.
	list click.
	self assert: docText equals: docMorph read.