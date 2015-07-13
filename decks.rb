# XXXXXXXXXXXXXXXXXDONEXXXXXXXXXXXXXXXXXXXXXXX

require_relative 'cards'

  class Decks

          attr_accessor :cards

    def initialize

      suit = [:hearts, :diamonds, :spades, :clubs]
      values = (2..10).to_a + ['J', 'Q', 'K', 'A'].to_a
      @cards = []
        suit.each do |suit|
          values.each do |val|
            @cards << Cards.new(val,suit)
          end
        end
        shuffle!
        #
        # @cards << Cards.new(suit, 'J')
        # @cards << Cards.new(suit, 'Q')
        # @cards << Cards.new(suit, 'K')
        # @cards << Cards.new(suit, 'A')
        # end
        # shuffle!
    end

  def shuffle!
    @cards.shuffle!
  end

end
#
# decks = Decks.new
