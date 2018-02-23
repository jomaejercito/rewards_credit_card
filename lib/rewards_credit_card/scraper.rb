class RewardsCreditCard::Scraper


  def method_name
    doc = Nokogiri::HTML(open(https://www.nerdwallet.com/the-best-credit-cards))

    doc.css("section#rewards.bcc-section").each do |cards|
      card.best_for = cards.css(<"span.card-image-apply-set__card-desc _136gj")
      card.name = cards.css("h3.card-image-apply-set__card-name _1Fuct")
      card.benefits = cards.css("ul.card-marketing-bullets _35sc7">)
      card.intro_apr = cards.css(#{}"p.card-details__content _136gj")
      card.regular_apr = cards.css(#{}"p.card-details__content _136gj")
      card.annual_fee = cards.css(#{}"p.card-details__content _136gj")
      card.recommended_credit_score = cards.css("span.likelihood-of-approval__label likelihood-of-approval__label--min")
    end
  end


  def method_name

  end


end
