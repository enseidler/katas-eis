class TenisCounter
    
    #Indexes for players
    PLAYER_1 = 0 
    PLAYER_2 = 1

    ADV = 666 # Integer abstraction for advantage state

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
        points_1 == tenis_notation(PLAYER_1) && points_2 == tenis_notation(PLAYER_2)
    end

    #Introduces the full tenis points notation (0->30->40-ADV)
    def tenis_notation(player)
        case points[player]
        when 0
            0
        when 1
            15
        when 2
            30
        when 3
            40
        else
            ADV
        end
    end
    
    #Check if the player has enough to win the current game
    def won_point(player)
        points[player] = points[player] + 1
        refresh_game(player)
    end
    
    #Scores the game won by the player
    def won_game(player)
        points[PLAYER_1] = 0
        points[PLAYER_2] = 0
        games[player] = games[player] + 1
        refresh_set(player)
    end

    #Check if the player won the game
    def already_won_game(player)
        points[player] > 3 && diff_of_two
    end

    #Verifies if difference between both players is greater or equal than 2 
    def diff_of_two
        (points[PLAYER_1] - points[PLAYER_2]).abs > 1 
    end

    #Manages the game state
    def refresh_game(player)
        if(already_won_game(player))
            won_game(player)
        elsif (advantage(opponent(player)))
            deuce_again
        end
    end
    
    #Returns true if player has advantage
    def advantage(player)
        points[player] == 4
    end
    
    #Returns the index of opponent's player
    def opponent(player)
        (player + 1) % 2
    end

    #Returns the score of the game to the abstract representation (40-40)
    def deuce_again
        points[PLAYER_1] = 3
        points[PLAYER_2] = 3
    end

    #Decides if player wins current set
    def refresh_set(player)
        if(already_won_set(player))
            won_set(player)
        end
    end
    
    #Scores the set won by the player
    def won_set(player)
        sets[player] = sets[player] + 1
    end

    #Check if the player has enough to win the current set
    def already_won_set(player)
        games[player] == 6
    end

end