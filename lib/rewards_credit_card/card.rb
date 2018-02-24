class RewardsCreditCard::Card
  attr_accessor :best_for, :name, :benefits, :intro_apr, :regular_apr, :annual_fee, :recommended_credit_score

  @@all = []


  def initialize
    @@all << self
  end


  def self.all
    @@all
  end


end
