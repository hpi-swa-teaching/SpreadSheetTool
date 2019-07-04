# SqueakSheet [![Build Status](https://travis-ci.org/hpi-swa-teaching/SpreadSheetTool.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SpreadSheetTool) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SpreadSheetTool/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SpreadSheetTool?branch=master)

SqueakSheet is a spread sheet tool for the Smalltalk environment [Squeak](https://squeak.org/), mainly focusing on the following visions:
- User-friendly UI;
- Evaluate Smalltalk formulas in cells; and
- Inspect objects in Squeak.

The development process was started in context of the Software Engineering course at HPI (University of Potsdam), by the team No. 10.

![Supported versions](/versions.png)

 ## Okay, how can I install it?
**Install our latest alpha-release** via [Metacello](https://github.com/Metacello/metacello) by opening any code pane and running the following lines (DoIt): 
```smalltalk
Metacello new
	baseline: 'SpreadSheetTool';
	repository: 'github://hpi-swa-teaching/SpreadSheetTool:alpha-release/packages';
	load
  ```
If you are interested in getting an insight into our current sprint's dirty implementation, replace `alpha-release` above with `master`. Alternatively, you can use [Squot](https://github.com/hpi-swa/Squot) to clone the repository. Important: If you do not use Metacello, make sure to invoke `SSSheetTool initialize` after cloning the repo!

If you would like to join our project, please feel free to fork and pull-request, and create issues.



















Carpe Squeak!
