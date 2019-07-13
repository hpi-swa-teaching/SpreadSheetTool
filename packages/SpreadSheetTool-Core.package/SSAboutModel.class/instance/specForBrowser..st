toolbuilder
specForBrowser: aBuilder

	^ Browser new
		setClass: SSCell;
		selectMessageCategoryNamed: #'accessing sheet';
		buildMessageListWith: aBuilder
