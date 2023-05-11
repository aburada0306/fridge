class CooksController < ApplicationController
  def index
    @cooks = Cook.all
    @cook_form = CookForm.new
  end

  def create
      @cook_form = CookForm.new(cook_form_params)
      if @cook_form.valid?
        @cook_form.save
        redirect_to root_path
      else
        render :new
      end
  end

  private

  def cook_form_params
    params.require(:cook_form).permit(:name, :tag_name)
  end
end
