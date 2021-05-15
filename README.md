# Safari Theme for Firefox

Make Firefox look native on macOS.

Updated package from https://github.com/diedummydie/Safari-Theme-for-Firefox, compatible with OSx Big Sur and Firefox 88. Errors that have been resolved in this first release:

- Fix empty back and forward buttons (fix from @gamunu, https://github.com/diedummydie/Safari-Theme-for-Firefox/pull/19)
- Location minimize/maximize/close buttons on OSx restored
- Removed borders, thick lightblue border when activated
- Resolved issue of moving text while hovering over tabs
- ...

Example of this update:

<img width="462" alt="Screenshot 2021-05-14 at 22 21 13" src="https://user-images.githubusercontent.com/12695083/118324751-f8401780-b4f1-11eb-906f-cc120353ba58.png">
<img width="478" alt="Screenshot 2021-05-14 at 22 22 05" src="https://user-images.githubusercontent.com/12695083/118324817-13ab2280-b4f2-11eb-8475-87b4317e89b5.png">


Switch between Light Mode and Dark Mode without editing CSS.

![screenshot](https://raw.githubusercontent.com/diedummydie/Safari-Theme-for-Firefox/master/etc/screenshot.jpg)

## Installation

1. **Install the userChrome**
   - Download this project with the green 'Clone or download' button above or [here](https://github.com/diedummydie/Safari-Theme-for-Firefox/archive/master.zip) (zip)
   - Open your Firefox profile folder:
     - ☰ Menu > Help > Troubleshooting Information > Profile Folder: [Show...]
   - Create a folder in your profile called `chrome` if it does not already exist
   - Copy `userChrome.css` and `lib` into that new `chrome` folder
2. **Enable userChrome**
   - Open `about:config` in the address bar
   - Set the preference `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
   - Restart Firefox
3. **Add the color themes**
   - [Safari Adaptive Light](https://addons.mozilla.org/en-US/firefox/addon/safari-adapt-light/)
   - [Safari Adaptive Dark](https://addons.mozilla.org/en-US/firefox/addon/safari-adapt-dark/)

- **Optional:**
  - Add the extension [Reload in address bar](https://addons.mozilla.org/en-US/firefox/addon/reload-in-address-bar/)
  - Right-click an empty area on the toolbar and select 'Customize...'
    - Re-arrange buttons to your preference
    - Note that this allows quick access to theme selection (but doesn't show all if you've installed more than three)

### Acknowledgements

Made possible with advice and code examples contributed by the community of [reddit.com/r/FirefoxCSS](https://www.reddit.com/r/FirefoxCSS/), [support.mozilla.org](https://support.mozilla.org/en-US/questions/firefox), [forums.mozillazine.org](http://forums.mozillazine.org/). Files in `lib` are from [MrOtherGuy/firefox-csshacks](https://github.com/MrOtherGuy/firefox-csshacks/).
