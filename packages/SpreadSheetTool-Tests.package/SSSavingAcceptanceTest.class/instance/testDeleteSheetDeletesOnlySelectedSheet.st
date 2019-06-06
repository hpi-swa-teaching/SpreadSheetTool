testing
testDeleteSheetDeletesOnlySelectedSheet
	"Acceptance test for #27"
	
	self
		saveSheetAs: self someSheetName;
		saveSheetAs: self someOtherSheetName;
		deleteSheetByName: self someSheetName.
	
	self
		shouldnt: [self openSheetByName: self someOtherSheetName]
			raise: Exception;
		should: [self openSheetByName: self someSheetName]
			raise: Exception.