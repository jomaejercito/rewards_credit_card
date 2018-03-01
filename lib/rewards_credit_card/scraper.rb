class RewardsCreditCard::Scraper


  def scrape_card
    doc = Nokogiri::HTML(open("https://www.nerdwallet.com/blog/top-credit-cards/nerdwallets-best-rewards-credit-cards/"))
    doc.css("div.nw-cc-roundup-section").each do |x|
      card = RewardsCreditCard::Card.new
      card.best_for = x.css("h2.nw-cc-roundup-section-heading").first.text
      card.name = x.css("h3.card-image-apply-set__card-name").first.text
      card.benefits = x.css("div.nw-cc-roundup-section-card-editorial p").first.text
      card.intro_apr = x.css("ul.card-details li:first-child p.card-details__content").text
      card.regular_apr = x.css("ul.card-details li:nth-child(2) p.card-details__content").text
      card.annual_fee = x.css("ul.card-details li:nth-child(3) p.card-details__content").text
      card.recommended_credit_score_1 = x.css("span.likelihood-of-approval__label.likelihood-of-approval__label--min").first.text
      card.recommended_credit_score_2 = x.css("span.likelihood-of-approval__label.likelihood-of-approval__label--max").first.text

      card.save
    end
  end


end
