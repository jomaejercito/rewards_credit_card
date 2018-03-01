class RewardsCreditCard::CLI


  def call
    puts "Find the credit card that gives you the best rewards!".colorize(:green)
    puts ""
    RewardsCreditCard::Scraper.new.scrape_card
    list_rewards
    menu
    goodbye
  end


  def list_rewards
    puts "Please enter the number that corresponds to the preferred reward(s).".colorize(:red)
    RewardsCreditCard::Card.all.each.with_index(1) do |card, i|
      puts "#{i}. #{card.best_for}".colorize(:blue)
    end
  end


  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter 'menu' to see the offers or 'exit' to exit the program."
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= RewardsCreditCard::Card.all.length
        card = RewardsCreditCard::Card.all[input.to_i - 1]
        puts "#{card.best_for}".colorize(:blue)
        puts ""
        puts "#{card.name}".colorize(:red)
        puts ""
        puts "Benefits: ".colorize(:green) +  "#{card.benefits}."
        puts ""
        puts "Intro APR: ".colorize(:green) + "#{card.intro_apr}"
        puts "Regular APR: ".colorize(:green) + "#{card.regular_apr}"
        puts "Annual Fee: ".colorize(:green) + "#{card.annual_fee}"
        puts "Recommended Credit Score: ".colorize(:green) + "#{card.recommended_credit_score_1} - #{card.recommended_credit_score_2}"
        puts ""
      elsif input == "menu"
        list_rewards
      else
        puts "Invalid input. Please enter 'menu' to see the offers again or 'exit' to exit the program." unless input == "exit"
      end
    end
  end


  def goodbye
    puts "Thank you and have a wonderful day!".colorize(:green)
  end


end
