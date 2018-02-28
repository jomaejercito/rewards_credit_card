class RewardsCreditCard::Scraper
require "pry"

  def scrape_card
    doc = Nokogiri::HTML(open("https://www.nerdwallet.com/the-best-credit-cards"))
    doc.css("article.product-card").each do |x|
      card = RewardsCreditCard::Card.new
      card.best_for = x.css("span.card-image-apply-set__card-desc._136gj").first.text
      card.name = x.css("h3.card-image-apply-set__card-name._1Fuct").first.text
      card.benefits = x.css("ul.card-marketing-bullets._35sc7").first.text
      card.intro_apr = x.css("ul.card-details._35sc7 li:first-child p.card-details__content._136gj").text
      card.regular_apr = x.css("ul.card-details._35sc7 li:nth-child(2) p.card-details__content._136gj").text
      card.annual_fee = x.css("ul.card-details._35sc7 li:nth-child(3) p.card-details__content._136gj").text
      card.recommended_credit_score = x.css("span.likelihood-of-approval__label.likelihood-of-approval__label--min").first.text

      card.save
    end
  end


end
