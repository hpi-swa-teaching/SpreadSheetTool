testing data
fixturesForCompositeReferencingFormulas

	^ {{ '^ cell leftBy: 2 aboveBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ cell leftBy: 2 aboveBy: -2'. 3 @ 3. 1 @ 5 }.
		{ '^ cell leftBy: -2 aboveBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell leftBy: -2 aboveBy: -2'. 3 @ 3. 5 @ 5 }.

		{ '^ cell leftBy: 2 belowBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ cell leftBy: 2 belowBy: -2'. 3 @ 3. 1 @ 1 }.
		{ '^ cell leftBy: -2 belowBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ cell leftBy: -2 belowBy: -2'. 3 @ 3. 5 @ 1 }.

		{ '^ cell rightBy: 2 aboveBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell rightBy: 2 aboveBy: -2'. 3 @ 3. 5 @ 5 }.
		{ '^ cell rightBy: -2 aboveBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ cell rightBy: -2 aboveBy: -2'. 3 @ 3. 1 @ 5 }.

		{ '^ cell rightBy: 2 belowBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ cell rightBy: 2 belowBy: -2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell rightBy: -2 belowBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ cell rightBy: -2 belowBy: -2'. 3 @ 3. 1 @ 1 }.
		
		{ '^ cell aboveBy: 2 leftBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ cell aboveBy: -2 leftBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ cell aboveBy: 2 leftBy: -2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell aboveBy: -2 leftBy: -2'. 3 @ 3. 5 @ 5 }.

		{ '^ cell belowBy: 2 leftBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ cell belowBy: -2 leftBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ cell belowBy: 2 leftBy: -2'. 3 @ 3. 5 @ 5 }.
		{ '^ cell belowBy: -2 leftBy: -2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell aboveBy: 2 rightBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell aboveBy: -2 rightBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ cell aboveBy: 2 rightBy: -2'. 3 @ 3. 1 @ 1 }.
		{ '^ cell aboveBy: -2 rightBy: -2'. 3 @ 3. 1 @ 5 }.

		{ '^ cell belowBy: 2 rightBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ cell belowBy: -2 rightBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ cell belowBy: 2 rightBy: -2'. 3 @ 3. 1 @ 5 }.
		{ '^ cell belowBy: -2 rightBy: -2'. 3 @ 3. 1 @ 1 }.	}