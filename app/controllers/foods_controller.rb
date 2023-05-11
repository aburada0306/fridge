class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end
  def new
    @food_form = FoodForm.new
  end
  def create
      @food_form = FoodForm.new(food_form_params)
      if @food_form.valid?
        @food_form.save
        redirect_to root_path
      else
        render :new
      end
  end


  
  private

  def food_form_params
    params.require(:food_form).permit(:name, :tagname)
  end
end
