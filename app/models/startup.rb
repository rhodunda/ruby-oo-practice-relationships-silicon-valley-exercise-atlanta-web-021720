class Startup

    attr_accessor :name, :domain
    attr_reader :founder
   
    @@all = []


    def initialize(name, founder, domain)
        @name = name 
        @founder = founder
        @domain = domain
        @@all << self 
    end 
    
    def self.all
        @@all
    end 

    def pivot(name, domain)
        @name = name
        @domain = domain
    end 


    def self.find_by_founder(names)
        self.all.filter{|start| start.founder == names}
    end 

    def self.domains 
        self.all.map{|start| start.domain}
    end

    
        def sign_contract(venture, type, amount )
        FundingRound.new(self, venture, type, amount)
        end 

        def num_funding_rounds
            FundingRound.all.select{|funding| funding.startup == self}.length
        end 

        def total_funds
            FundingRound.all.select{|fund| fund.startup == self}.map{|start| start.investment}.sum
        end 

        def investors
            FundingRound.all.select{|fund| fund.startup == self}.map{|start| start.venture_capitalist}.uniq
        end 


        def big_investors
            investors = FundingRound.all.select{|fund| fund.startup == self}.map{|start| start.venture_capitalist}.map{|vest| vest.name}.uniq
            for i in 0...investors.length
                new_array = VentureCapitalist.tres_commas_club.select{|n| n == investors[i]}

            end 
            new_array
        end 





end