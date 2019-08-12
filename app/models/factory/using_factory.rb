jungle_organism_factory = OrganismFactory.new(Tree, Tiger)
pond_organism_factory = OrganismFactory.new(WaterLily, Frog)

jungle = Habitat.new(1, 4, JungleOrganismFactory)
jungle.simulate_one_day

pond = Habitat.new(2, 4, PondOrganismFactory)
pond.simulate_one_day
