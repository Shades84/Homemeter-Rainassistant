# Homemeter-Rainassistant
A Home Assistant control and status suite for Rainmeter

What's New:
* Added more lovelace style tile variants as well as the 'button' style (which looks the same as before)
* Each template now has a configuration file that the skin can pull from. Place your entity ID in this file for each copy of the skin
* Added media player widget! Limited functionality as of right now (see below for next steps)

What's Next:
* Improve media player functionality (album art, progress indicator, toggle mute)
* More media player styles (Some sort of overlay picture to fancy it up a bit. Some modern, some retro, some very... 2000s)
* User configurable on/off state indicator

Requires curl. Get it from [here](https://curl.se/windows/). I downloaded this and moved the contents of the 'bin' folder to a new 'curl' folder in a convient place. You need to add curl to your windows path. Check the instructions [here](https://develop.zendesk.com/hc/en-us/articles/360001068567-Installing-and-using-cURL/) for a good guide

Requires Rainmeter-JsonParser plugin to be installed. ([here](https://github.com/e2e8/rainmeter-jsonparser))

Load the "settings" skin to change your 
* Home Assistant address
* Home Assistant Authentication Token. Instructions [here](https://www.home-assistant.io/docs/authentication/)
* Refresh rate (higher refreshes more often, but might cause more cpu/network usage)
* Icon color scheme and size 
* Text and background color options


Enjoy!


![logo](https://avatars0.githubusercontent.com/u/70672161?s=400&u=4ca4991047f8a8cad1ca38c563594bc9334ef9f3&v=4)
