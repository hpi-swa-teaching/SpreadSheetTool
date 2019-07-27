initialize-release
initialize

	super initialize.
	self
		wrapFlag: true; hideHScrollBarIndefinitely;
		styler: (SHTextStylerST80 new view: self);
		wantsWrapBorder: PluggableTextMorph visualWrapBorder;
		wrapFlag: PluggableTextMorph softLineWrap.
	self
		setProperty: #alwaysAccept toValue: true;
		basicHasEditFocus: false.