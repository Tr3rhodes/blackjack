class Cards


      attr_accessor :value,
                    :suit

      def initialize(value, suit, face)

        @value = value
        @suit = suit
        @face = face

      end

      def blackjack_value(value)
        return value.to_i unless value.to_i == 0

        case value
          when 'A'; 11
          when 'J','Q','K'; 10



        end
      end
end
      #
      # def ==(card)
      #   self.value == card.value
      # end
      #
      # def >(card)
      #   self.value > card.value
      # end
      #
      #
      # def <(card)
      #   self.value < card.value
      # end


      # def suited?(card)
      #   self.suit == card.suit
      #
      # end
