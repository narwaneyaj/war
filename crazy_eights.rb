require './Deck'

deck = 52

player = Deck.new
computer = Deck.new
dealer = Deck.new


player_cards = [player.card, player.card, player.card, player.card, player.card, player.card, player.card]
computer_cards = [computer.card, computer.card, computer.card, computer.card, computer.card, computer.card, computer.card]
deck = deck - 14

puts "Player 1 cards array #{player_cards}"
puts "Computer cards array #{computer_cards}"

until deck <= 0

  suite = dealer.suite[rand(4)]
  number = dealer.number
# :)

  puts "Pick a card from your choices"
  player_card = gets.chomp
  if player_card == suite || player_card == number
    player_cards.delete(dealer.card)
    # deck = deck - 1
  else
    player_cards << player.card
    deck = deck - 1
    puts "Player 1 cards array #{player_cards}"
    puts "Pick a card from your choices"
    player_card = gets.chomp
    if player_card == suite || player_card == number
      player_cards.delete(dealer.card)
      # deck = deck - 1
    end
  end
  puts "AFTER PLAYER 1 #{deck} \n"
  puts "Player 1 card:: #{player.card}"
  puts "Player 1 cards array #{player_cards}"
# /:)
  if computer_cards.include?(suite) || computer_cards.include?(number)
    computer_cards.delete(dealer.card)
    # deck = deck - 1
  else
    computer_cards << computer.card
    deck = deck - 1
    if computer_cards.include?(suite) || computer_cards.include?(number)
      computer_cards.delete(dealer.card)
      # deck = deck - 1
    end
  end

  puts "AFTER COMPUTER #{deck} \n"
  puts "Computer card:: #{computer.card}"
  puts "Computer cards array #{computer_cards}"
  puts deck

end
