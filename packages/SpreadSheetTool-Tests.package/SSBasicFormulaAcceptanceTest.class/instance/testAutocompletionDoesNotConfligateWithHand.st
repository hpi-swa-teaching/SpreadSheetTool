testing
testAutocompletionDoesNotConfligateWithHand
	"Regression test for #68"
	
	| cell |
	cell := self findAnyCell.
	cell click.
	self shouldOpenAutocompletionWhile: [
		cell sendKeys: '^cell ro'].
	cell
		sendKeys: 'wHeaderAt: 1';
		sendControlSave.
	self assert: '1' equals: cell read.
