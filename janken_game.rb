# encoding: utf-8

# 3点先取勝負

class Player
PAPER = 0
SCISORS = 1
STONE = 2
POINTS_TO_WIN = 3
WIN = {
  [PAPER, STONE] => true,
  [SCISORS, PAPER] => true,
  [STONE, SCISORS] => true
}
HANDS = ["パー","チョキ","グー"]

  def initialize(name)
    @point = 0
    @choice = nil
    @name = name
  end

  def victory?
    @point == POINTS_TO_WIN
  end

  def fight(other)
    while !victory? && !other.victory?
      decide()
      other.decide()
      puts("#{name} : #{HANDS[choice]}, #{other.name} : #{HANDS[other.choice]}")
      judge(other)
      other.judge(self)
    end
  end

  def victory_speech()
    if victory?
      puts("#{name}の勝ち！")
    end
  end

  protected

  def decide()
    @choice = rand(3)
  end

  attr_reader :choice
  attr_reader :name

  def judge(other)
    if WIN[[choice, other.choice]]
      @point += 1
    end
  end
end

class HumanPlayer < Player

  def decide()
    puts("パーは0、チョキは1、グーは2を入れてください")
    @choice = Integer(gets())
  end

  computer = Player.new("コンピュータ")
  player = HumanPlayer.new("あなた")
  computer.fight(player)
  computer.victory_speech()
  player.victory_speech()

end
