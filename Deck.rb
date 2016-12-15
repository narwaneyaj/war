class Deck

  # attr_accessor :cards
  #
  # def initialize(cards)
  #   @cards = cards
  # end\


  def deck
    deck = 52
  end

  def number
    number = rand(10) + 1
  end

  def special_cards
    special_cards = ["Ace", "Jack", "Queen", "King"]
  end

  def suite
    suite = ["Club", "Spade", "Heart", "Diamond"]
  end

  def card
    random = rand(2) + 1
    if random == 1
      card = number.to_s + suite[rand(4)]
    end
    if random == 2
      card = special_cards[rand(4)] + suite[rand(4)]
    end
    return card
  end
# ;(
  def new_number
    new_number = rand(9) + 1
  end

  def remove_card(cards)
    cards = cards - 1
    return cards
  end

  def add_cards(cards)
    cards = cards + 1
    return cards
  end

  def reached_cards_end?
    if cards == 52
      return true
    end
  end

  def cards_number(cards)
    cards == 26
    return cards
  end
# /:(
end
