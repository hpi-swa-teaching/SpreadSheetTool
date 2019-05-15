baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Project12' with: [
					spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'];
				baseline: 'Widgets' with: [
					spec repository: 'github://hpi-swa/widgets:master/repository'].
			spec
				package: 'SpreadSheetTool-Core';
				package: 'SpreadSheetTool-Tests' with: [spec requires: #('SpreadSheetTool-Core' 'Project12')];
				yourself.
			spec
				group: 'default' with: #('SpreadSheetTool-Core');
				group: 'tests' with: #('SpreadSheetTool-Tests')].
	spec
		postLoadDoIt: #postLoad.