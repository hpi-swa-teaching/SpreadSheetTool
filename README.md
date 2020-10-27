# SqueakSheet [![Build Status](https://travis-ci.org/hpi-swa-teaching/SpreadSheetTool.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SpreadSheetTool) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SpreadSheetTool/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SpreadSheetTool?branch=master) [![Demo video](https://img.shields.io/badge/demo%20video-watch%20it%20on%20youtube-red)](https://youtu.be/V4OeSZD_Q80)

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

You can start the tool via TheWorldMainDockingBar. To inspect an object, select some text in Squeak and choose SheetIt in the code pane menu. To inspect a morph, open a halo and choose SqueakSheet in the morph debug menu. For detailed information about how to use SqueakSheet, just open a SqueakSheet window and press the About button.

## Contributing

Any contribution to SqueakSheet is highly welcome! Please feel free to fork and pull-request, and create issues. If you would like to join the regular development of this project, please don’t hesitate to contact us – we will be happy to give you an overview about the current state and design thoughts of the project (contact: Christoph Thiede, see [Credits](#Credits). If you're at HPI, just send me an email via OWA).

Source code is organized using [Squot](https://github.com/hpi-swa/Squot/). To submit a PR, this would be your usual workflow:

1. In the Git Browser, clone the repository using Squot and check out the latest master
2. On GitHub, fork the repository
3. In the Git Browser, add your fork as new remote to the repository (yellow button menu on the repository > "Add remote")
4. Create a new local branch (e.g. `feat-awesome`) based on `origin/master`
5. Commit your awesome changes!
6. Push the new branch to your fork
7. On GitHub, create a pull request from `fork/feat-awesome` against `origin/master`

For information how to use Squot, please read their [usage instructions](https://github.com/hpi-swa/Squot/#usage-instructions) or create an issue.

## Impressions
### Inspecting a morph

![Inspecting a morph](/img/inspecting%20a%20morph.png)

### Supported versions (archive screenshot)

![Supported versions](/img/supported%20versions.png)

## Credits

The development process was started in context of the Software Engineering course at HPI (University of Potsdam) in summer term 2019 by the team No. 10. Initial contributors are:
- [Jannis Bolik](https://github.com/JGameCreation)
- [Andrea Nathansen](https://github.com/AndreaNathansen)
- [Benedikt Schenkel](https://github.com/Scretch9)
- [Georg Tennigkeit](https://github.com/georgt99)
- [Christoph Thiede](https://github.com/LinqLover)

Also thank [Leon Matthes](https://github.com/MrModder) for his diligent support!

Carpe Squeak!
