class TenisCounter

    def initialize()
        @sets = {"jugador_1" =>0, "jugador_2" => 0}
    end

    def sets
        @sets
    end

    def match_goes(sets_1, sets_2)
        sets_1 == sets["jugador_1"] && sets_2 == sets["jugador_2"]
    end

end