# SqueakSheet [![Build Status](https://travis-ci.org/hpi-swa-teaching/SpreadSheetTool.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SpreadSheetTool) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SpreadSheetTool/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SpreadSheetTool?branch=master)

SqueakSheet is a spread sheet tool for the Smalltalk environment [Squeak](https://squeak.org/), mainly focusing on the following visions:
- User-friendly UI;
- Evaluate Smalltalk formulas in cells; and
- Inspect objects in Squeak.

## Installation
**Install our latest alpha-release** via [Metacello](https://github.com/Metacello/metacello) by opening any code pane and running the following lines (DoIt): 
```smalltalk
Metacello new
	baseline: 'SpreadSheetTool';
	repository: 'github://hpi-swa-teaching/SpreadSheetTool:alpha-release/packages';
	load
  ```
If you are interested in getting an insight into our current sprint's dirty implementation, replace `alpha-release` above with `master`. Alternatively, you can use [Squot](https://github.com/hpi-swa/Squot) to clone the repository. Important: If you do not use Metacello, make sure to invoke `SSSheetTool initialize` after cloning the repo!

You can start the tool via the MainDockingBar menu. To inspect an object, select some text in Squeak and choose SheetIt in the code pane menu. To inspect a morph, open a halo and choose SqueakSheet in the morph debug menu.

## Demo video
[![Watch the video](https://i.ytimg.com/vi/V4OeSZD_Q80/hqdefault.jpg)](https://youtu.be/V4OeSZD_Q80)

For further information, just install our tool, open a SqueakSheet instance and press the big About button!

## Credits

The development process was started in context of the Software Engineering course at HPI (University of Potsdam), by the team No. 10. Initial contributors:
- Jannis Bolik
- Andrea Nathansen
- Benedikt Schenkel
- Georg Tennigkeit
- Christoph Thiede

Also thank Leon Matthes for his diligent support!

If you would like to join our project, please feel free to fork and pull-request, and create issues. We're always happy about any requests!

## Supported versions

![Supported versions](/versions.png)


















Carpe Squeak!
