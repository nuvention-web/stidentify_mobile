# -- Required settings --

steroids.config.name = "Steroids.js test app"
steroids.config.location = "http://localhost/index.html"

# -- Tabs --

# A boolean to enable tab bar (on bottom)
# This will override steroids.config.location (that is for single webview apps, like in PhoneGap)
# Default: false
#
steroids.config.tabBar.enabled = false

# Array with objects to specify which tabs are created on app startup
#
# Tab object properties are:
# - title: text to show in tab title
# - icon: path to icon file (f.e. images/icon@2x.png)
# - location: can be one of these
#   - file URL (relative to www, f.e. index.html)
#   - http://localhost:13101/ (serves files locally from www, f.e. http://localhost:13101/ would serve index.html)
#   - http://www.google.com (directly from internet)
#
steroids.config.tabBar.tabs = [

]

steroids.config.preloads = [
  {
    "id": "drawer",
    "location": "http://localhost/drawer.html"
  }
]


# -- Status bar --
# Sets status bar visible (carrier, clock, battery status)
# Default: true
#
steroids.config.statusBar.enabled = true

# -- Colors --
# Color values can be set in hex codes, eg. #ffbb20
# Setting these values override values set by the application theme in steroids.config.theme
# Default for all attributes: ""

# steroids.config.navigationBar.tintColor = ""
# steroids.config.navigationBar.titleColor = ""

# steroids.config.navigationBar.buttonTintColor = ""
# steroids.config.navigationBar.buttonTitleColor = ""

steroids.config.navigationBar.borderSize = 4
steroids.config.navigationBar.borderColor = "#aef"

# steroids.config.tabBar.tintColor = ""
# steroids.config.tabBar.tabTitleColor = ""
# steroids.config.tabBar.selectedTabTintColor = ""

# Can be used to set an indicator image for the selected tab (can be bigger than the tab)
# Default: ""
# steroids.config.tabBar.selectedTabBackgroundImage = ""

# Built-in iOS theme, values: black and default
# Default: "default"
#
# steroids.config.theme = "default"

# The preMake command is run before `steroids make`, the process where `app/` and `www/` folders are processed into the `dist/` folder.
# steroids.config.hooks.preMake.cmd = "grunt"
# steroids.config.hooks.preMake.args = ["build"]
#
# The postMake command is run right after `steroids make`, before running `steroids package`, the process that packages the app before sending it to client devices.
# steroids.config.hooks.postMake.cmd = "echo"
# steroids.config.hooks.postMake.args = ["cleaning up files"]

