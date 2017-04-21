require 'csv'

class Cookbook
  def initialize(csv_path)
    @recipes = []

    # @recipes is an Array of Recipe Instances
    # csv_options = [ quote_char: ‘“‘, col_sep: ‘,‘ ]

    @csv_path = csv_path

    CSV.foreach(@csv_path) do |row|
     @recipes << Recipe.new(row[0],row[1])
     return @recipes
   end

      # An array of 2 strings
      # An object that needs 2 strings to instantiate
 end
  # CRUD
  # CREATE
  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << ['recipe']
      end
    end
    #@recipes << recipe
    # task here is an instance of Task

  end

  # READ
  # Read all tasks
  def all
    return @recipes
  end

  # Read one task
  def find(index)
    @recipes[index]
    # Returns an instance of a Task
  end

  # DELETE
  def remove_recipe(index)
    @recipes.delete_at(index)
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << ['recipe']
      end
  end
end
end


  ########### BIGGEST CHALLENGE TODAY #########
  # CSV Logic
  # How to load from CSV when I start app?
  # How to write to CSV when I add,
  # remove or update information?
  #############################################





