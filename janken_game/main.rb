# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'player'
require 'computer_selector'
require 'human_selector'

class Main
  computer = Player.new("コンピュータ", ComputerSelector.new())
  player = Player.new("あなた", HumanSelector.new())
  computer.fight(player)
  computer.victory_speech()
  player.victory_speech()
end
