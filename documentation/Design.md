## Project Purpose

The purpose of this mobile site is to create a way for semi-organized basketball tournaments/leagues/events can allow people to effectively track player and team stats. This idea came about as I was at a local basketball tournament and everyone was using a very basic google spreadsheet and the score keepers weren't able to track stats in an efficient manner (they had to rummage through the spreadsheet to find the stats). Also, they were using laptops that had poor wireless connections so updating was a challenge. If the stat trackers could have used their phone's (being as all of them did have smartphones) browser to access a site that could track teams and player stats, I believe tracking would've been much more reliable and accurate.

### How Requirements Will be Met

#### As platform agnostic as possible: Accessible on Android, iOS, and Windows Phone devices.
We will utilize web technologies that all the desired platforms are capable of using. Thus the subset of javascript, HTML, and CSS compatable on the listed platforms' browsers will be used. This front end feature set will be based on the [foundation HTML toolkit](http://foundation.zurb.com/).

#### Responds to user input in 50ms or less on common devices. 
As web latency can not be guranteed to be sub 50ms at all times, the application will make side of client-side caching and updating to provide user feedback in less than 50ms. This response speed is generally easily attainable with client-side javasript. The framework employed for this interactivity, speed, and background AJAX will be [angularjs](http://angularjs.org/).

#### Simple design that allows users to navigate quickly and easily on screens ranging from 3.5" to 10". 
Simple design will be achieved with a "low-chrome" and "flat UI" approach as has been adopted by Microsoft's recent desktop and mobile operating systems, iOS version 7, and other examples of current practice in the design space. The project designer is versed in such styles and will prototype the design as needed to acheive simplicity before the product is finished. In addition the foundation HTML toolkit provides some layouts which will make this design goal straightforward.

#### User Authentication & Account types.
Authenticating users and determining user priviliges based on account category are very well known web application challenges. Web frameworks in virtually every language include re-usable user authentication toolkits. This project will XXX (need to decide framework between revel, rails, sinatra or other)!!
User authentication wll be based based on the common model of server-side database of user accounts, as mediated by the chosen framework. Appropriate security will be achieved by only storing salted password hashes using bcrypt or equivalent hash protocol. Available user actions will be based on the authenticated account type, including a standard "admin panel" view for _league managers_.

  * verify a string (the password) meets app req
  * app req of a string:
      * check string size (at least 7 characters)
      * check if at least 1 capital letter is in the string
      * check if there is at least 1 integer


* League managers can create teams and assign players to team rosters.
  * Based on authenticated users and their privs, they can create and manage teams accordingly
  * League managers to create X scorekeeper accounts and allow accounts to only be used once per device. This is a fluid requirement, and may change as the project progresses.
* unauthenticated users will just see a read-only version of the current scores and any other stats.



### Universal viewing
The web application will include a number of view-only pages with no authentication, thus enabling the viewing of historic and current statistics by all interested parties. This will support all of the following requirements.

* Any user can view game stats in real time.
* Previous games can not be edited by any user.
* Any user can view overall team standings.
* Any user can sort teams by arbitrary numeric stats.
* Any user can view individual and overall player standings.
* Any user can sort players by arbitrary numeric stats.

* Can show per-player statistics.

Similar to for the "activity feed" a player will have a unique URL endpoint which will provide their statistics, as listed in the requirements document, in HTML and JSON formats.
The specific visual design of the displays is TBD, but can take advantage of various javascript or SVG visualization techniques.

### Activity feed
Each game and player will have an activity feed published in at least JSON and HTML, and identified by a unique URL. Including an RSS version of the feed is a possible, but not required addition.



Assumptions
-----------

