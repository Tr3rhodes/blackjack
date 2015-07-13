require_relative 'cards'
require_relative 'decks'

class BlackJack

    attr_accessor :dealer_hand,
                  :player_hand,
                  :decks


    def initialize
      @decks = Decks.new
      @player_hand = @decks.cards.shift(2)
      @dealer_hand = @decks.cards.shift(2)


    end

      def play
        blackjack_or_bust
        display_hands
        hit_or_stand
        # self.player_hand
        # self.dealer_hand
        # puts "Player hand value is #{hand_value }"
        # puts "Dealer hand is #{dealer_value}"
        # puts "Do you want to hit or stay (h/s)"
        # choice = gets.chomp
      #     if choice == "h"
      #       hit
      #     else choice == "s"
      #       stay
      #     end
      #     winner
      #     play_again
      #
      # end

      def blackjack_or_bust
        if hand_value(player) == 21
          puts "BJ"
        elsif hand_value(dealer) == 21
          puts "Dealer Wins"
        elsif hand_value(player) > 21
          puts "Player Bust"
        elsif hand_value(dealer) > 21
          puts "Dealer Bust"
        end
      end

        def hand_value
          self.player_hand.inject(0) {|sum, card | sum + card.blackjack_value}
        end

          def dealer_value
            self.dealer_hand.inject(0) {|sum, card| sum + card.blackjack_value}
          end

        def display_hands(all_dealer=false)
          

        end


      def hit_or_stand
        puts "h or s"
        if choice = "h"
          choice = gets.chomp
          self.player_hand << @decks.cards.shift
          winner
        else
             dealer_hit
             winner

        end
      end

      def dealer_hit
            dealer_value <= 16

      end

        def blackjack
           player_hand.value.to_i == 21 || dealer_hand.value.to_i > 21
           puts "Black Jack"
           play_again
         end

      def bust
            player_hand.value.to_i > 21 || dealer_hand.value.to_i > 21
            winner
      end


          def winner
            blackjack
            if self.player_hand.value >= self.dealer_hand.value
                || self.dealer_hand.value.bust
              puts "Player WINS with a value of #{hand_value}"

              play_again
            else self.dealer_hand.value > self.player_hand.value ||
              self.player_hand > 21
              puts "Dealer WINS with a value of #{dealer_value}"
          end


        def play_again
          puts "Want to play again(y/n)?"
              choice = gets.chomp
            if choice == "y"
              self.play
            else
          puts "OK then. Bye!"
          exit
            end
        end
end


    BlackJack.new.play

#
#                   OBJECT OF BLACKJACK
# DEAL OUT TWO CARDS TO THE PLAYER
# AND TWO CARDS TO THE DEALER
#
# BOTH THE PLAYER CARDS ARE FACE UP
#
# YOU SHOULD HAVE THE OPTION OF 'HIT' OR 'STAY' IF < 21
#
# IF YOU HAVE 21 YOU WIN
#
# IF YOU 'HIT' ANOTHER CARD COMES OF THE DECK (Loop back to drawing until player hits stay)
# ONCE YOU 'STAY' ITS THE DEALERS TURN
#
#
# ONE OF THE DEALER CARDS IS UNSEEN
#
# IF THE DEALER >= 16  STAY
# IF UNDER 16 THE DEALER TAKES A CARD UNTIL VALUE IS OVER 16
#
# ALL TIES PLAYER WINS
#
# IF TOTAL VALUE OF CARDS IS OVER 21 ITS A 'BUST'
# IF PLAYER BUST DEALER WINS
# IF DEALER BUST PLAYER WINS
#
#
# NEW DECK AFTER EVERY TURN




#
#












# Normal Mode
#
# don't consider Aces as possible 1's ... they are always 11s
# This is a 2 hand game (dealer and player)
# no splitting or funny business
# 1 deck in the game
# 52 card deck
# NO WILDS
# New deck every game
# deck must be shuffled every game
# no betting at all
# must have suits (ace of diamonds)
# Dealer hits if less than 16, otherwise dealer stays
# You enter what you play
# No if you get 5 cards you win funnybusiness
# get as close to 21 without going over
# Must beat the dealer
# you can see 1 of dealers cards, while you are playing
# If you get blackjack, you win automagically
# Ties go to the player
