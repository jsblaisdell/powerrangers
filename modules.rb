module Fight

  def punch(target)
    puts target.scream("ow")
    puts target.run
    puts target.scream("ow") if @strength > 5
    puts target.run if @strength > 5
    target.caffeine_level -= 1
    @caffeine_level -= 1
  end

end
