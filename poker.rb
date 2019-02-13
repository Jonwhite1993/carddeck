require 'tty-prompt'

prompt = TTY::Prompt.new

def deck_maker()
    suits = ["H","D","S","C"]
    values = [2,3,4,5,6,7,8,9,10,11,12,13,14]
    deck = []
    suits.each do |suit|
        values.each do |value|
            deck << "#{value.to_s + suit}"
        end
    end
    return deck
end

 deck_one = deck_maker

 deck_two = deck_maker

name = prompt.ask("What is your name?")

prompt.ask("Here is a random card from the deck, #{name}.", default: "Your card is #{deck_one.shuffle.first}")





