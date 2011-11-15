# encoding: utf-8

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

  def initialize(name, selector)
    @point = 0
    @choice = nil
    @name = name
    @selector = selector
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
    @choice = @selector.select()
  end

  attr_reader :choice
  attr_reader :name

  def judge(other)
    if WIN[[choice, other.choice]]
      @point += 1
    end
  end

  def victory?()
    @point == POINTS_TO_WIN
  end
end

