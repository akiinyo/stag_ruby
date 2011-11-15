class Not
  def set_input(value)
    @input = value
  end

  def get_output
    if @input == 1
      0
    else
      1
    end
  end
end
