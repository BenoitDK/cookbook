class View
  # OUTPUT
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} #{recipe.description}"
      # we put .name or .description because recipe is an object
      # and we need to access its name and its description.
      # this is because you have a reader on recipe. The reader
      # is in the file recipe.rb.

    end
  end

  # INPUT
   # when 1 then @controller.list
   #  when 2 then @controller.create
   #  when 3 then @controller.destroy
   #  when 4 then stop

  def ask_for_description
    puts "Please write a description"
    print ">"
    return gets.chomp
  end

  def ask_for_name
    puts "Please write a name"
    print ">"
    return gets.chomp
  end

  def ask_user_for_index
    puts "What index?"
    return gets.chomp.to_i - 1
  end

  def destroy_recipes
    puts "Which recipe do you want to destroy?"
    ask_user_for_index
  end

end
