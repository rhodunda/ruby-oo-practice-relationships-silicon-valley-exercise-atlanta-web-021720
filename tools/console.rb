require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'  
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("bob", "joe", "website1")
startup2 = Startup.new('billy', "rob", "website2")
startup3 = Startup.new("bryan", "joey", "website3")

venture_cap1 = VentureCapitalist.new("jimmy", 1000)
venture_cap2 = VentureCapitalist.new("will", 1500000000000)
venture_cap3 = VentureCapitalist.new("richard", 2000000000000)

funding_round1 = FundingRound.new(startup1, venture_cap1, "a", 100)
funding_round2 = FundingRound.new(startup2, venture_cap3, "b", 500)
funding_round3 = FundingRound.new(startup3, venture_cap2, "x", 100)
funding_round3 = FundingRound.new(startup3, venture_cap2, "x", 100)
funding_round3 = FundingRound.new(startup3, venture_cap2, "x", 100)


binding.pry 


0 #leave this here to ensure binding.pry isn't the last line