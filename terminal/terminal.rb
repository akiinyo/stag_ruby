# encoding: utf-8

class Terminal
  def initialize
    @name = name
    @connected = []
    @current_state = nil
  end

  attr_reader :name

  def connect(&proc)
    @connected << proc
  end

  def connect_input_terminal(terminal)
    connect do |state|
      terminal.state = state
    end
  end

  def state=(state)
    if state !=0 && state !=1
      raise(ArgumentError, "値(=#{state})が不適切です。1か0を指定してください")
    end

    if @current_state !=state
      @current_state = state
      @connected.each do |proc|
        proc.call(state)
      end
    end
  end

  def state
    @current_state
  end
end

