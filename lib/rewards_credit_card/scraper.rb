class RewardsCreditCard::Scraper


  def get_page
    doc = Nokogiri::HTML(open(https://www.nerdwallet.com/the-best-credit-cards))
  end


  def get_card
    get_page.css("section#rewards.bcc-section")
  end


  def make_card
    self.get_card.each do |x|
      card.best_for = x.css(<"span.card-image-apply-set__card-desc _136gj").text
      card.name = x.css("h3.card-image-apply-set__card-name _1Fuct").text
      card.benefits = x.css("ul.card-marketing-bullets _35sc7">).text
      card.intro_apr = x.css(#{}"p.card-details__content _136gj").text
      card.regular_apr = x.css(#{}"p.card-details__content _136gj").text
      card.annual_fee = x.css(#{}"p.card-details__content _136gj").text
      card.recommended_credit_score = x.css("span.likelihood-of-approval__label likelihood-of-approval__label--min").text
    end    
  end


end
