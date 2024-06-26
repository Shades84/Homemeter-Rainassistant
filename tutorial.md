# step 0, Prerequisites 
- Home Assistant installed and set up properly
- Switches, sensors, lights, etc configured in Home Assistant
- Rainmeter installed


# step 1, Install other prerequisites:
  <ul><li><details><summary>If running < Windows 10:</summary>
    <ul><li><h3>step 1, Installing curl</h3><ul>
      <li>Download curl from [here](https://curl.se/windows/) (more than likely you should get the 64 bit)</li>
      <li>Make a new folder called 'curl' in a convinient location (I put mine in a programs folder on my second drive, `D:\Programs\`)</li>
      <li>Extract the curl download and copy the contents from 'bin' to the new folder</li>
    </ul></li></ul>
    <ul><li><h3>step 2, Add curl to windows path</h3><ul>
      <h4>based on the instructions [here](https://develop.zendesk.com/hc/en-us/articles/360001068567-Installing-and-using-cURL/)</h4>
        <li>In the Windows 'Settings' app, go to 'System' then select the 'About' tab at the bottom</li>
        <li>Scroll down and click on 'Advanced system settings'</li>
        <li>Go to the 'Advanced' tab in the new window that pops up</li>
        <li>Click 'Environment Variables'</li>
        <li>Select the "Path" variable in System Variables, and click Edit.</li>
        <li>In the Edit environment variable dialog box, click New and add the path to the curl.exe file. Example: D:\Programs\curl.</li>
        <li>Test out curl by opening a command prompt and typing `curl --help `</li>
        <li>If you recieve the message ` 'curl' is not recognized as an internal or external command, `, then something went wrong with setting the Windows Path Environment Variable</li>
    </li></ul></ul></li></ul>
</details>

- ## step 1.1, Installing Rainmeter-JsonParser
  - Download `.zip` from Rainmeter-JsonParser from [here](https://github.com/e2e8/rainmeter-jsonparser)
  - Extract contents to (probably) `<CURRENT_USER>\AppData\Roaming\Rainmeter\Plugins\`
# step 2, Long access token from Home Assistant
- Navigate to your Home Assistant overview page
- Click your profile on the bottom of the side menu bar
- Select the 'Security' tab at the top of the page
- Scroll down to the bottom section entitled 'Long-Lived Access Token' and click 'CREATE TOKEN'
- Give the token a name (this is for your own organization, its not that important really) and click 'OK'
- Copy the token to a text document temporarily **YOU CAN'T SEE IT AFTER THIS POINT, SO DON'T HIT OK UNTIL YOU HAVE COPIED**

# step 3, Setting up Homemeter Rainassistant
*we're nearly there*
- Download the skin from Github as a zip (if you do a git pull, I'm guessing you probably don't need a lot of this tutorial)
- Extract it to the folder where all your other skins are saved
- In the Rainmeter management window (check look in the system tray), refresh all the skins, and load the 'Settings' skins for Homemeter Rainassistant
- Input the IP address for your Home Assistant including the port. Example ``` http://111.222.333.444:8123 ``` (8123 is the default port)
- Input the long access token from the previous step
- You can unload the 'Settings' skin for now, but you can always load it up again to adjust colors, icon size, etc
- Load the 'API Status' skin. Give it a couple of seconds. If there is a checkmark, you're good to go! If there is a cross, then check the troubleshooting page
  
# step 4, Configuring entities
- Make copies of the switch, light, etc template folders for any entity you want to add.
- Rename the copied folders to something descriptive
- Open the config file in the new folder and change the entity ID to match the entity ID you want to add (only change the second line)

Example:
  ```
  [Variables]
  entity_id="light.bedroom"
  entity_id2="\"#entity_id#\""
  label=Light Toggle
```
- Repeat for all the entities you would like to add
