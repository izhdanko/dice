require_relative 'data_manager'
require_relative 'auth'
require_relative 'dice'
require_relative 'rules'

module Dice
	class Game

		include DataManager
		include Auth

		attr_reader :players

		def initialize dice_number
			@rules = Rules.new dice_number
			@players = []
		end

		def run bet, stake = 100
			@rules.bet = bet
			@rules.roll_dice

			if @rules.winner?
				@rules.count stake, @current_player
				puts "Вы выиграли! Поздравляем!"
			else
				@rules.count stake, @current_player
				puts "Вы проиграли, но не расстраивайтесь. Попробуйте снова!"
			end
		end

	end
end
