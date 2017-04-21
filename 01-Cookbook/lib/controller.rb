require_relative "view"
require_relative "recipe"
class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes

  end

  def create
    name = @view.ask_for_name
    description = @view.ask_for_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end


  def destroy
    display_recipes
    index = @view.destroy_recipes # returns a Fixnum
    recipe = @cookbook.remove(index) # removes task from repo
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @view.display(recipes)
  end
end








