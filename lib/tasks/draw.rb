class Draw

  def initialize
    @draw_people = Array.new

    Person.where("active=True").find_each do |person|
      @draw_people.push(person)
    end
  end

  def generate
    # Do the draw!
    @new_draw = Array.new
    r = Random.new
    draw_pool = @draw_people
    num_draws = draw_pool.length

    num_draws.times do |i|
      # Generate a random number within the array space.
      if draw_pool.length == 0
        break
      end
      person_drawn = r.rand(1..draw_pool.length) - 1

      #Move the person drawn from the people to the new_draw
      @new_draw.push(draw_pool[person_drawn])
      draw_pool.delete_at(person_drawn)
    end

    #Return the new draw
    @new_draw
  end

end