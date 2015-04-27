class TenisCounter
    
    #Indexes for players
    PLAYER_1 = 0 
    PLAYER_2 = 1

    def initialize()
        @sets = [0,0] # Number of sets for each player
    end

    def sets
        @sets
    end

    #Check score sets in the match, for both players
    def match_goes(sets_1, sets_2)
        sets_1 == sets[PLAYER_1] && sets_2 == sets[PLAYER_2]
    end

end