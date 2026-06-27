> [!WARNING]
> This project has been archived because we are not actively maintaining nor using it. It hasn't seen activity since July 2015 and may have known security vulnerabilities that have not been addressed. If you would like to move this work forward, please do! If we get enough interest, we might reconsider working on this again. You can always donate to provide us with more resources.

Note: I (@benrfairless) used AI to assist with the process of archiving this repository, however I reviewed the decision myself before taking action.
This is a simple scraper showing you how to use PhantomJS with Ruby.
Here's what it does:

1. Visits the morph.io home page
2. Because the headless browser is a small window it now has to click the button to open the navigation menu so we can see the search box
3. It enters a search for "planningalerts" into the search box and clicks the submit button
4. After waiting for the results to appear (see the important gotcha in the code comments!) it outputs the full names of all the scrapers on the search results page

Any questions? Hit up the [help forum](https://help.morph.io/).