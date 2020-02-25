class VentureCapitalist

    attr_accessor :name
    attr_reader :total_worth
    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end 
    
    def self.all
        @@all
    end 

    def self.tres_commas_club 
        self.all.select{|vent| vent.total_worth > 1000000000}.map{|tres| tres.name}
    end
    
    def offer_contract( startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end 

    def funding_rounds
        FundingRound.all.select{|fund| fund.venture_capitalist == self}
    end 


end 