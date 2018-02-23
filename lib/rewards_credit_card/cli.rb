class RewardsCreditCard::CLI


  def call
    list_cards
    menu
    goodbye
  end


  def list_cards
    puts "Find the credit card that gives you the best rewards!"
    puts "-----------------------------------------------------"
    puts <<-DOC
    1. Best for: High Dining and Travel Rewards
    2. Best for: 5% Bonus Categories
    3. Best for: Easy Flat Rate Travel Rewards
    4. Best for: Cash Back Bonus Match
    5. Best for: Gas and Grocery Rewards
    DOC
  end


  def menu
    input = nil
    while input != "exit"
      puts "Please enter the number that corresponds to the preferred reward(s)."
      puts ""
      input.gets.strip.downcase

      if input.to_i > 0
        #puts the information of chosen offer
      elsif == "menu"
        #goes back to menu and shows the list again
      else
        puts "Invalid input. Please enter 'menu' to see the offers again or 'exit' to exit the program."
      end
    end
  end


  def goodbye
    puts "Thank you and have a wonderful day!"
  end

end
