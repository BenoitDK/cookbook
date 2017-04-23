require 'csv'

class Cookbook
  def initialize(csv_path) # You need a path to the csv.
    @recipes = []
    @csv_path = csv_path
    @csv_options = csv_options


  def load_csv
    CSV.foreach(@csv_path) do |row|
      @recipes << Recipe.new(row[0],row[1])
    end
  end
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





