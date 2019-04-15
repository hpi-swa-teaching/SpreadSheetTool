baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'SpreadSheetTool-Core';
				package: 'SpreadSheetTool-Tests' with: [spec requires: #('SpreadSheetTool-Core')];
				yourself.
			spec
				group: 'default' with: #('SpreadSheetTool-Core');
				group: 'tests' with: #('SpreadSheetTool-Tests')];
				yourself