require_relative 'core_ext/object'
require_relative 'dice/game'
require_relative 'player'

module Dice

	# VERSION = "1.0.0"

	RELEASE = "1"
	MIDDLE = "0"
	MINOR = "0"

	def self.version
		[RELEASE, MIDDLE, MINOR].join(".")
	end

end

# puts "VERSION #{Dice::VERSION}"
puts "VERSION #{Dice.version}"
puts

puts 'Добро пожаловать в игру Кости - Dice!'
puts

game = Dice::Game.new 3
player = Player.new 'Счастливчик'

game.login! player
puts

player.show_credit
puts

game.run 12
player.show_credit
puts

game.run 10, 200
player.show_credit
puts

game.logout! player
player
