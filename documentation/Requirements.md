### Basketball League Tracker Website

## Purpose:  

To create a website that allows users to track basketball game stats via a mobile site.  It will be twofold in that:
1. Score keepers can easily track stats of games that are currently going on.
2. Viewers can check previous games as well as games in real-time.

Requirements:

* As platform agnostic as possible: Accessible on Android, iOS, and Windows Phone devices.
* Responds to user input in 50ms or less on common devices. (STATIC REQ)
* Simple design that allows users to navigate quickly and easily on screens ranging from 3.5” to 10". (UI REQ)
* Password-based user authentication with reasonable security.
* Authenticated league managers.
    * League Managers: can create and manage a single league and it's scorekeepers/stats.
      * Creation of the league includes specifying & saving:
        * Team size (3v3 4v4 5v5)
        * Total Teams (16 is max)
        * Max players per team (15 max for each 5v5-size team, 10 max per 4v4-size team, 6 for each 3v3-size team)
        * Adding & removing players from rosters.
        * Foul counter limits (how many fouls a team can have before free throws are awarded).
* Authenticated score-keepers.
    * Score Keeper: Account is created by league manager, or is an existing account "promoted" by the league manager.
      * Can record the following league-specific data on a per-game basis:
        * Points
        * Rebounds
        * Assists
        * Fouls (NOTE: IF TOTAL TEAM FOULS reaches League Manager limit, notification to scorekeepers that opposing team now gets to shoot free throws)
        * Turnovers
        * Steals
        * Blocks
        * Free Throws Attempted
        * Free Throws Made
* League/tournament managers would create teams and assign players to team rosters.
* Authenticated score keepers can record points, assists, rebounds, fouls, or ANY OTHER stat they want from active games.
* Any user can view game stats in real time.
  * As stats are entered, there can be a play by play output to the view (ex: Player 1 on Team A scores 2 points, Score Keeper tallies the points, 'play-by-play mode' displays "TEAM A: Player 1 scores 2 points"). Commonly called an "activity feed".
* Any user can view previous game's stats.
* Can show per-player statistics.
* Previously submitted/finished games can not be edited.
* Previous games can not be edited by any user.
* Any user can view overall team standings.
* Any user can sort teams by arbitrary numeric stats.
* Any user can view individual and overall player standings.
* Any user can sort players by arbitrary numeric stats.