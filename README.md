# Homemeter-Rainassistant
A Home Assistant control and status suite for Rainmeter

What's New:
* Improved the Media Player skin (split it into music and movie versions, made the art only download when the title changes)
* Added a couple of neat media player variants 
* Reworked the directory structure of the entire project. Now it should be as simple as git cloning the whole thing (I promise not to change it any more)

This is my first project that i've opened up to the community, and im still working out a lot of the kinks in my workflow. And also, improving my coding style. I appreciate people being patient. Message me here or on reddit if you are having issues.

What's Next:
* Automated skin generator (Idea is that you run a script and it makes a copy of the necessary templates and fills in the information)
* covers integration
* continued iumprovement of troubleshooting guide


## Quick Start Guide
See the full installation guide for more details

Requires curl. Get it from [here](https://curl.se/windows/). I downloaded this and moved the contents of the 'bin' folder to a new 'curl' folder in a convient place. You need to add curl to your windows path. Check the instructions [here](https://develop.zendesk.com/hc/en-us/articles/360001068567-Installing-and-using-cURL/) for a good guide

Requires Rainmeter-JsonParser plugin to be installed. ([here](https://github.com/e2e8/rainmeter-jsonparser))

Load the "settings" skin to change your 
* Home Assistant address
* Home Assistant Authentication Token. Instructions [here](https://www.home-assistant.io/docs/authentication/)
* Refresh rate (higher refreshes more often, but might cause more cpu/network usage)
* Icon color scheme and size 
* Icon highlight (this is the color the button shows when the state is 'on')
* Text and background color options


Enjoy!


![logo](https://avatars0.githubusercontent.com/u/70672161?s=400&u=4ca4991047f8a8cad1ca38c563594bc9334ef9f3&v=4)
