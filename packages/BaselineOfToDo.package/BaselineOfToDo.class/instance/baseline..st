baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'ToDo-Core';
				package: 'ToDo-Tests' with: [spec requires: #('ToDo-Core')];
				yourself.
			spec
				group: 'default' with: #('ToDo-Core');
				group: 'tests' with: #('ToDo-Tests')];
				yourself