# Automated Testing
## Pre-requisites
1. JAVA
2. Chrome Driver - Follow this link to download the chrome driver based on your chrome browser version - https://chromedriver.chromium.org/downloads)
3. Set Environment Variables specific to Applitools test execution as -
 `APPLITOOLS_API_KEY= <your applitools API Key>`
 `APPLITOOLS_SERVER_URL = https://suncorpeyes.applitools.com`

## Available command to run tests
| Command                                                                                                                               | Description  |
|---------------------------------------------------------------------------------------------------------------------------------------|---          |
| java -jar ApplitoolsSimpleTestRunner-4.0.2.jar job.xml "-var[env_prefix,https://]" "-var[override_baseline,true]" -narrate            | Run this command to run tests in Prod to update the baselines   | 
| java -jar ApplitoolsSimpleTestRunner-4.0.2.jar job.xml "-var[env_prefix,https://stest.npe.]" "-var[override_baseline,false]" -narrate | Set env_prefix value as your test environment specific sub-domain and Run this command in your same test environment to test UI of the Application  |

## How to update baselines and run test without manually triggering above commands
**MAC** - Run `./suncorp.sh`
**Windows** - Run `suncorp.bat`

Above scripts would trigger the test in the following sequence without manual intervention -
1. Run tests in Prod Env to take baselines.
2. Run tests in test env. (Note - Please update the value of env_prefix according to your test environment)

## How to add/update tests
Open sitemap.xml to update the existing tests and add new URLs.

## How to enable Applitools logs 
Adding `-applitoolsLogs` to the execution command will print out the logs for the Applitools commands that are executed. 

**For example:** `Java -jar ApplitoolsSimpleTestRunner.jar job.xml -applitoolsLogs`

Adding `-narrate` to the execution command will print out the actions that are executed. 

**For exampe:** `Java -jar ApplitoolsSimpleTestRunner.jar job.xml -narrate`

Adding `-time` to the execution command will print out the time it took for each action to be performed. 

**For exampe:** `Java -jar ApplitoolsSimpleTestRunner.jar job.xml -time`

## What is Applitools Ultrafast Grid?
https://applitools.com/docs/topics/overview/using-the-ultrafast-grid.html

## How to test your Application on multiple browsers and device viewports using Applitools Ultrafast Grid?
Add/update the browser/device configuration in your configuration.xml file. Follow the below code snippet -
    
    `<visualGrid>
     <browser type="chrome" width="1280" height="800" />
     <browser type="chrome_one_version_back" width="1280" height="800" />
     <browser type="chrome_two_versions_back" width="1280" height="800" />
     <browser type="firefox" width="1280" height="800" />
     <browser type="firefox_one_version_back" width="1280" height="800" />
     <browser type="firefox_two_versions_back" width="1280" height="800" />
     <browser type="edge_chromium" width="1280" height="800" />
     <browser type="edge_chromium_one_version_back" width="690" height="600" />
     <browser type="edge_chromium_two_versions_back" width="1300" height="600" />
     
     <chromeDeviceEmulation name="Pixel_4" /> 
     <chromeDeviceEmulation name="Pixel_4"  orientation="LANDSCAPE"/>
     <chromeDeviceEmulation name="Galaxy_S20" /> 
     <chromeDeviceEmulation name="Galaxy_S20"  orientation="LANDSCAPE"/> 
     <chromeDeviceEmulation name="iPhone_11" />
     <chromeDeviceEmulation name="iPhone_11"  orientation="LANDSCAPE"/>
     
     <iosDevice name="iPhone_12" />
     <iosDevice name="iPhone_12" orientation="LANDSCAPE" />
     <iosDevice name="iPad_7" />
     <iosDevice name="iPad_7" orientation="LANDSCAPE" />
     </visualGrid>`
    				
**Browser Type Enum** - https://applitools.com/docs/api/eyes-sdk/enums-gen/enum-global-browsertype-selenium-java.html

**Device Name Enum** - https://applitools.com/docs/api/eyes-sdk/enums-gen/enum-global-devicename-selenium-java.html

**iOS Device Name Enum** - https://applitools.com/docs/api/eyes-sdk/enums-gen/enum-global-iosdevicename-selenium-java.html
		

## Want to explore more 
Please follow this link to see the complete documentation - https://docs.google.com/document/d/1Gradtg5pNCIGh-7bB7u_PImmGam7lof-duqbVxmDYdU/edit#

## Want to know more about Applitools integration with other automated test frameworks 
Please follow this link - https://applitools.com/tutorials/