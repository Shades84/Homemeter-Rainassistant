## api status skin not showing a checkmark
There are a number of places that this chain could go wrong. The first thing we will check is if we can see the API from the command prompt

- Open a new command prompt window
- copy this line to a temporary notepad document `curl -X GET -H "Authorization: Bearer PLACE TOKEN HERE" -H "Content-Type: application/json" http://PLACE IP ADDRESS HERE/api/` (this is mostly for convinience sake)
- replace the 'PLACE TOKEN HERE' with your access token. If you don't have it saved anywhere, it should be in the 'options.inc' file in the '@Resources' folder
- replace the 'PLACE IP ADDRESS HERE' with the IP address and port of your Home Assistant instance
- it should look vaguely like this `curl -X GET -H "Authorization: Bearer as9dajlk5shdlka554jshskdjfh32sdfthisisatokendododooooaslkdj2837019" -H "Content-Type: application/json" http://111.222.333.444:8123/api/`
- copy all this to the command prompt and hit enter
- you will get one of the following responses:
  
    API Running: 
    This means the problem is with the rainmeter skin. This could be with the webparser plugin. Or it could be that the address/ auth token was input incorrectly in rainmeter, but correctly in the 'curlTest' file. Or the JSON parser plugin

    curl not found:
    This means that curl is not in the Windows path

    Failed to connect to ....
    The URL and/or port is incorrect

    401: Unauthorized
    Authentication token is incorrect
    
    
## Above gave me an 'API Running' message
Lets check if webparser and JSON-parser are working
- Load the 'api status' skin if its not loaded already
- Open the rainmeter management window
- Click 'Open Log'
- Go to the 'Skins' tab
- Find 'HomeMeter Rainassistant\API Status' and click on it
- First look at the measure called 'HAapi'. If the string is `{"message": "API running."}` thats a good thing. This means that your address, port, and token are all correct. If not, then double check you input them correctly
- If the above passed, check the 'HAparse'measure. If the string is `API running.`, then everything should be fine (which means *I* messed something up, if its still not working for you). If this string is anything else, then there is something wrong with the JSON-parser 
