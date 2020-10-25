baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'MorphicTestingFramework' with: [
				spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			spec
				package: 'SpreadSheetTool-Core';
				package: 'SpreadSheetTool-Tests' with: [
					spec requires: #(default 'MorphicTestingFramework')];
				package: 'SpreadSheetTool-Examples'.
			spec
				group: 'default' with: #('SpreadSheetTool-Core' 'SpreadSheetTool-Examples');
				group: 'tests' with: #('SpreadSheetTool-Tests')].
	spec
		postLoadDoIt: #postLoad.