ASSIGNMENT 01
MODULE CODE = CS6116
MODULE NAME = Mobile Multimedia

Assignment Topic: To develop an iPhone App with four screens / MVC controllers to present general and more detailed information about the members of a group. At least 10 members should be included.

- What I have done for this assignment?

NOTE: The app has been developed and executed on iPhone 13 pro simulator.

1. A total of 12 members/players/Legends of the famous football club Manchester United F.C. has been chosen for this app. Since most of these players are former players the initial button navigating from home page which is the first view controller consisting of a logo image and a label to the second page is named as Legends.

2. The second page is a table view controller where a list of players has been shown. Instead of viewing the players name and image on the original table view cell, i have added an additional view inside the cell and inside this view there is an image view and a label. This was done for the purpose of customising the table cell, by giving it a corner radius and also making image logos circular.

3. By clicking on each cell will lead to the third view controller which shows details associated with the player from the list. Again the main image view is given a corner radius making it circular and beneath the image view basic details of the player can be viewed such as name, position, country, debut date and left united date.

4. The fourth view controller is a more detailed version of the previous view controller where the biography of each players can be viewed. The segue connecting the third view controller to the fourth screen is presented modally with a flip horizontal transition giving it a page flipping like feels having a small closing button at the top right corner.

5. The fifth or the last view controller is a webView controller which shows the websites associated with each players.

6. In the assets App icon folder a png logo for the app is provided of different dimensions compatible for different devices, so that the default app icon which is a grid image is replaced with the app logo provided in the assets.

7. The first view controller has a compose icon at the top right corner which navigates to a theme selection screen. A total of four themes have been created for this app which has both shades for light theme and dark theme, and can be tested by switching between the dark and light appearance of the simulator.

