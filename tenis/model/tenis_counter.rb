class TenisCounter
    
    #Indexes for players
    PLAYER_1 = 0 
    PLAYER_2 = 1

    def initialize()
        @sets = [0,0] # Number of sets for each player
        @games = [0,0] # Number of games for each player
        @points = [0,0] # Abstraction of the points for each player
    end

    def sets
        @sets
    end

    def games
        @games
    end

    def points
        @points
    end

    #Check score sets in the current match, for both players
    def match_goes(sets_1, sets_2)
        sets_1 == sets[PLAYER_1] && sets_2 == sets[PLAYER_2]
    end

    #Check score games in the current set, for both players
    def set_goes(games_1, games_2)
        games_1 == games[PLAYER_1] && games_2 == games[PLAYER_2]
    end

    #Check score points in the current game, for both players
    def game_goes(points_1, points_2)
        points_1 == points[PLAYER_1] && points_2 == points[PLAYER_2]
    end

end