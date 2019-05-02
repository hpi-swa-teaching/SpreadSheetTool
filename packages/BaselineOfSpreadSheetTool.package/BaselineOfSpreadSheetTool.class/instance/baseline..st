baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'Project10' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			spec
				package: 'SpreadSheetTool-Core';
				package: 'SpreadSheetTool-Tests' with: [spec requires: #('SpreadSheetTool-Core')];
				yourself.
			spec
				group: 'default' with: #('SpreadSheetTool-Core');
				group: 'tests' with: #('SpreadSheetTool-Tests')];
				yourself
