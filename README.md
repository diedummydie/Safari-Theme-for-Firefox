# Safari Theme for Firefox

This setup configures Firefox components to look more integrated and native on macOS or anywhere desired. It's made to work with the color themes below which let you switch between light and dark without editing CSS.

* [Safari Adaptive Light](https://addons.mozilla.org/en-US/firefox/addon/safari-adapt-light/)

* [Safari Adaptive Dark](https://addons.mozilla.org/en-US/firefox/addon/safari-adapt-dark/)

![screenshot](https://raw.githubusercontent.com/diedummydie/Safari-Theme-for-Firefox/master/etc/screenshot.jpg)

## Installation

1. Install the userChrome
    * Download this project with the green 'Clone or download' button above or [here](https://github.com/diedummydie/Safari-Theme-for-Firefox/archive/master.zip) (zip)
    * Open your Firefox profile folder:
        * ☰ Menu > Help > Troubleshooting Information > Profile Folder: [Show...]
    * Create a folder in your profile called `chrome` if it does not already exist
    * Copy `userChrome.css` and `lib` into that new `chrome` folder
2. Enable the userChrome
    * Open [about:config](about:config)
    * Set the preference `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
    * Restart Firefox
3. Install one or more of the themes above (Safari Adaptive Light/Dark)
* Optional:
    * Add the extension [Reload in address bar](https://addons.mozilla.org/en-US/firefox/addon/reload-in-address-bar/)
    * Right-click an empty area on the toolbar and select 'Customize...'
        * Re-arrange buttons to your preference.
        * Note that this allows quick access to theme selection (but doesn't show all if you've installed more than three).

### Public Domain

Made possible with code and advice contributed by users of [reddit.com/r/FirefoxCSS](https://www.reddit.com/r/FirefoxCSS/), [support.mozilla.org](https://support.mozilla.org/en-US/questions/firefox), and [forums.mozillazine.org](http://forums.mozillazine.org/). The imports in `lib/` are graciously licensed under the GNU GPL by [MrOtherGuy](https://github.com/MrOtherGuy/firefox-csshacks/), included here for convenience. To release my own work under a more permissive (un)license I'm invoking the GPL linking exception.

**These themes and userChrome.css are free and unencumbered code released into the public domain.**

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this code, either in source code form or as a compiled
extension, for any purpose, commercial or non-commercial, and by any
means.
