class OrangeTree

  def initialize
    @oranges = 0
    @age = 1
    @height = 3
    @harvestCount = 0
    puts 'you bought a year-old orange tree!'
  end


  def pick_oranges
    if @oranges == 0
      puts 'sorry you do not have any oranges on your tree'
    end
    if @oranges > 0
      @oranges = @oranges - 1
      @harvestCount = @harvestCount + 1
      puts 'mmmmm these oranges are so juicy and sweet!'
    end
    orange_count
  end

  def one_year_passes
    @oranges = 0
    @age = @age + 1
    if @age > 2
      @oranges = (@oranges + 1) * @age
    end
    if @age > 4
      puts 'Sorry your tree died :('
      puts 'You ended up harvesting a total of: ' + @harvestCount.to_s + ' oranges.'
      exit
    end
    puts 'Your tree grew by a year. Hopefully it will have fruits!'
    @height = @height + 1
    height
    age
    orange_count
  end

 private
  def height
    puts 'your tree is: ' + @height.to_s + ' feet tall.'
  end

  def age
    puts 'your tree is: ' + @age.to_s + ' years old.'
  end

  def orange_count
    puts 'your tree has: ' + @oranges.to_s + ' oranges right now.'
    if @oranges > 0
      puts 'pick some! I hear they are really good!'
    end
    if @oranges == 0
      puts 'oh no you cannot pick any oranges they are over!'
    end
  end


end

tree = OrangeTree.new
while true
puts "\nDo you want to pick oranges or wait for a year? type (p or w respectivley)"
if gets.chomp == 'p'
  tree.pick_oranges
else
  tree.one_year_passes
end
end
