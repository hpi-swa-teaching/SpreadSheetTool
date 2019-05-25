testing
testCellShouldStoreValue: aCell
	<theoryTaking: #SSCell>
	
	| constant |
	self flag: #todo "Find out whether theories are good here. Otherwise revert to conventional unit tests".
	
	constant := 42.

	aCell value: constant.
	
	self assert: constant equals: aCell value.