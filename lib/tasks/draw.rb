class Draw

  def initialize
    @draw_people = Array.new

    Person.find_each do |person|
      @draw_people.push(person)
    end
  end

  def generate
    @draw_people
  end

end