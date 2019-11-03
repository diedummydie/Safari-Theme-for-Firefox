# Safari Theme for Firefox

Make Firefox look more native on macOS.

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
   - [Safari Adaptive Light](https://addons.mozilla.org/en-US/firefox/addon/safari-adapt-light/) ![Light theme icon](https://github.com/diedummydie/Safari-Theme-for-Firefox/raw/master/etc/Safari%20Adaptive%20Light/light48.png)
   - [Safari Adaptive Dark](https://addons.mozilla.org/en-US/firefox/addon/safari-adapt-dark/) ![Dark theme icon](https://github.com/diedummydie/Safari-Theme-for-Firefox/raw/master/etc/Safari%20Adaptive%20Dark/dark48.png)

- **Optional:**
  - Add the extension [Reload in address bar](https://addons.mozilla.org/en-US/firefox/addon/reload-in-address-bar/)
  - Right-click an empty area on the toolbar and select 'Customize...'
    - Re-arrange buttons to your preference
    - Note that this allows quick access to theme selection (but doesn't show all if you've installed more than three)

### Acknowledgements

Made possible with advice and code examples contributed by the community of [reddit.com/r/FirefoxCSS](https://www.reddit.com/r/FirefoxCSS/), [support.mozilla.org](https://support.mozilla.org/en-US/questions/firefox), [forums.mozillazine.org](http://forums.mozillazine.org/). Files in `lib` are from [MrOtherGuy/firefox-csshacks](https://github.com/MrOtherGuy/firefox-csshacks/).
