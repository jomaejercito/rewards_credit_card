class RewardsCreditCard::CLI


  def call
    list_cards
  end


  def list_cards
    puts "Find the credit card that gives you the best rewards!"
    puts "-----------------------------------------------------"
    puts "Please enter the number that corresponds to the preferred reward(s)."
    puts ""
    puts <<-DOC
    1. Best for: High Dining and Travel Rewards
    2. Best for: 5% Bonus Categories
    3. Best for: Easy Flat Rate Travel Rewards
    4. Best for: Cash Back Bonus Match
    5. Best for: Gas and Grocery Rewards
    DOC
  end


  def menu

  end


end
