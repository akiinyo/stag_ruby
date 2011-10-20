# encoding: utf-8

# 3点先取勝負

PAPER = 0
SCISORS = 1
STONE = 2
WIN = {
  [PAPER, STONE] => true,
  [SCISORS, PAPER] => true,
  [STONE, SCISORS] => true
}
HANDS = ["パー","チョキ","グー"]

class Player
  def initialize()
    @point = 0
    @choice = nil
  end

  attr_accessor :choice
  attr_accessor :point
end

computer = Player.new()
player = Player.new()

while player.point < 3 && computer.point < 3
  puts("パーは0、チョキは1、グーは2を入れてください！")
  choice = gets()
  player.choice = Integer(choice)
  computer.choice = rand(3)
  puts("あなた:#{HANDS[player.choice]}, コンピューター:#{HANDS[computer.choice]}")
  if WIN[[player.choice, computer.choice]]
    player.point += 1
  elsif WIN[[computer.choice, player.choice]]
    computer.point += 1
  end
end

if player.point >= 3
  puts("あなたの勝ちです")
else
  puts("あなたの負けです")
end
