PURPOSE
=======
The purpose of this mobile site is to create a way for semi-organized basketball tournaments/leagues/events can allow people to effectively track player and team stats. This idea came about as I was at a local basketball tournament and everyone was using a very basic google spreadsheet and the score keepers weren't able to track stats in an efficient manner (they had to rummage through the spreadsheet to find the stats). Also, they were using laptops that had poor wireless connections so updating was a challenge. If the stat trackers could have used their phone's (being as all of them did have smartphones) browser to access a site that could track teams and player stats, I believe tracking would've been much more reliable and accurate.

How requirements will be met
-----------------------------
* As platform agnostic as possible: Accessible on Android, iOS, and Windows Phone devices.
  * We will utilize web technologies that all platforms are capable of using. We will try and create it via Ruby on Rails
* Responds to user input in 50ms or less on common devices. 
  * This is all about appearances. utilizing client side caching and making sure requests are queued up properly will be key 
* Simple design that allows users to navigate quickly and easily on screens ranging from 3.5” to 10". 
  * I strongly encourage using very simple, chrome-less UI, akin to the design standards that Microsoft and many others have adopted in the mobile landscape.  Content must shine.  We can use Photoshop to prototype the design.
* Authenticated league/tournament managers
  * User authentication based on a database of user accounts that we will have stored in our site. There will be at launch 3 types of clients:
    * League Managers: creates/manages a single league and it's scorekeepers/stats
      * Creation of the league includes:
        * Team size (3v3 4v4 5v5)
        * Total Teams (16 is max)
        * Max players per team (15 max for each team 5v5, 10 max for 4v4, 6 for 3v3)
        * Adding players
    * Score Keeper: created by league manager and manages scores for live games
    * Viewers: can see live game stats as well as historical stats
* League/tournament managers would create teams and assign players to team rosters
  * Based on authenticated users and their privs, they can create and manage teams accordingly
* Authenticated score keepers can record points, assists, rebounds, fouls, or ANY OTHER stat they want from active games.
  * League managers to create X scorekeeper accounts and allow accounts to only be used once per device. This is not set in stone and it may change as we progress in the project 
* Any user can view game stats in real time.
  * unauthenticated users will just see a read-only version of the current scores and any other stats
* Any user can view previous game's stats.
  * Same as above
* Can show per-player statistics.
  * Plan on creating views of the database data.  This one will extract player data and display it to the end-user
* Previously submitted/finished games can not be edited.

* Previous games can not be edited by any user.
* Any user can view overall team standings.
* Any user can sort teams by arbitrary numeric stats.
* Any user can view individual and overall player standings.
* Any user can sort players by arbitrary numeric stats.


Assumptions
-----------

