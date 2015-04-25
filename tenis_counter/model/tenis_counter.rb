class TenisCounter

    def initialize()
        @sets = {"jugador_1" =>0, "jugador_2" => 0}
        @game_points = {"jugador_1" =>0, "jugador_2" => 0}
    end

    def sets
        @sets
    end

    def game_points
        @game_points
    end

    def match_goes(sets_1, sets_2)
        sets_1 == sets["jugador_1"] && sets_2 == sets["jugador_2"]
    end

    def game_goes(points_1, points_2)
        points_1 == game_points["jugador_1"] && points_2 == game_points["jugador_2"]
    end    

end