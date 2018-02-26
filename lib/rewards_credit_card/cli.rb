class RewardsCreditCard::CLI


  def call
    list_rewards
    menu
    goodbye
  end


  def list_rewards
    puts "Find the credit card that gives you the best rewards!"
    puts "-----------------------------------------------------"
    RewardsCreditCard::Card.all.each.with_index(1) do |card, i|
      puts "#{i}. #{card.best_for}"
    end
  end


  def menu
    input = nil
    while input != "exit"
      puts "Please enter the number that corresponds to the preferred reward(s)."
      puts "You can also enter 'menu' to see the offers again or 'exit' to exit the program."
      input = gets.strip.downcase

      if input.to_i > 0
        print_card
      elsif input == "menu"
        list_rewards
      else
        puts "Invalid input. Please enter 'menu' to see the offers again or 'exit' to exit the program."
      end
    end
  end


  def goodbye
    puts "Thank you and have a wonderful day!"
  end


  def print_card
    card = RewardsCreditCard::Card.all[input.to_i - 1]
    puts "#{card.best_for} #{card.name}"
    puts ""
    puts "Benefits: #{card.benefits}"
    puts "Intro APR: #{card.intro_apr}"
    puts "Regular APR: #{card.regular_apr}"
    puts "Annual Fee: #{card.annual_fee}"
    puts "Recommended Credit Score: #{card.recommended_credit_score}"
  end


end
