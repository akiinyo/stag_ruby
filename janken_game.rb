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

  def initialize(msg)
    @point = 0
    @choice = nil
    @message = msg
  end

  def victory?
    @point == POINTS_TO_WIN
  end

  def fight(other)
    deceide_human()
    other.decide_computer()
    puts("あなた: #{HANDS[choice]}, コンピュータ: #{HANDS[other.choice]}")
    judge(other)
    other.judge(self)
  end

  def victory_speech()
    if victory?
      puts(@message)
    end
  end

  protected

  def deceide_human()
    puts("パーは0、チョキは1、グーは2を入れてください")
    @choice = Integer(gets())
  end

  def decide_computer()
    @choice = rand(3)
  end

  attr_reader :choice

  def judge(other)
    if WIN[[choice, other.choice]]
      @point += 1
    end
  end
end

computer = Player.new("あなたの負けです")
player = Player.new("あなたの勝ちです")
while !computer.victory? && !player.victory?
  player.fight(computer)
end
computer.victory_speech()
player.victory_speech()
