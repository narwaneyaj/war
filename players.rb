require './Deck'

p1Cards = 26
p2Cards = 26

player1 = Deck.new(p1Cards)
player2 = Deck.new(p2Cards)

puts "\nPlayer1 cards"
puts p1Cards
puts "\nPlayer2 cards"
puts p2Cards

until player1.cards_number(p1Cards)== 52 && player2.cards_number(p2Cards)== 0 || player1.cards_number(p1Cards)== 0 && player2.cards_number(p2Cards) == 52

  puts "\nPlayer 1 number"
  puts player1.number
  puts "\nPlayer 2 number"
  puts player2.number
  puts "\nPlayer 1 special_cards"
  puts player1.special_cards[rand(4)]
  puts "\nPlayer 2 special_cards"
  puts player2.special_cards[rand(4)]

  if player1.number == player2.number
    if player1.new_number > player2.new_number
      p1Cards = p1Cards + 3
      p2Cards = p2Cards - 3
    elsif player2.new_number > player1.new_number
      p1Cards = p1Cards - 3
      p2Cards = p2Cards + 3
    end
  end

  if player1.special_cards[0] && player2.special_cards[0]
    if player1.new_number > player2.new_number
      p1Cards = p1Cards + 3
      p2Cards = p2Cards - 3
    elsif player2.new_number > player1.new_number
      p1Cards = p1Cards - 3
      p2Cards = p2Cards + 3
    end
  end

  if player1.special_cards[1] && player2.special_cards[1]
    if player1.new_number > player2.new_numbera
      p1Cards = p1Cards + 3
      p2Cards = p2Cards - 3
    elsif player2.new_number > player1.new_number
      p1Cards = p1Cards - 3
      p2Cards = p2Cards + 3
    end
  end

  if player1.special_cards[2] && player2.special_cards[2]
    if player1.new_number > player2.new_number
      p1Cards = p1Cards + 3
      p2Cards = p2Cards - 3
    elsif player2.new_number > player1.new_number
      p1Cards = p1Cards - 3
      p2Cards = p2Cards + 3
    end
  end

  if player1.special_cards[3] && player2.special_cards[3]
    if player1.new_number > player2.new_number
      p1Cards = p1Cards + 3
      p2Cards = p2Cards - 3
    elsif player2.new_number > player1.new_number
      p1Cards = p1Cards - 3
      p2Cards = p2Cards + 3
    end
  end

  if player1.number > player2.number
    player1.add_cards(player1.cards_number(p1Cards))
    player2.remove_card(player2.cards_number(p1Cards))
  end

  if player2.number > player1.number
    player2.add_cards(player2.cards_number(p1Cards))
    player1.remove_card(player1.cards_number(p1Cards))
  end

  if player1.special_cards[1] && player2.special_cards[0] || player1.special_cards[2] && player2.special_cards[1] || player2.special_cards[0] || player1.special_cards[3] && player2.special_cards[1] || player2.special_cards[0] || player2.special_cards[2]
    player1.add_cards(player1.cards_number(p1Cards))
    player2.remove_card(player1.cards_number(p1Cards))
  end

  if player2.special_cards[1] && player1.special_cards[0] || player2.special_cards[2] && player1.special_cards[1] || player1.special_cards[0] || player2.special_cards[3] && player1.special_cards[1] || player1.special_cards[0] || player1.special_cards[2]
    player2.add_cards(player2.cards_number(p1Cards))
    player1.remove_card(player1.cards_number(p1Cards))
  end

  if player1.special_cards[0]
    player2.add_cards(player2.cards_number(p1Cards))
    player1.remove_card(player1.cards_number(p1Cards))
  end

  if player2.special_cards[0]
    player1.add_cards(player1.cards_number(p1Cards))
    player2.remove_card(player2.cards_number(p1Cards))
  end


  puts "\nPlayer1 cards"
  puts p1Cards
  puts "\nPlayer2 cards"
  puts p2Cards

end

if p1Cards == 52
  puts "Player 1 Won!"
else
  puts "Player 2 Won!"
end
