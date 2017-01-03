class BrightIdeasController < ApplicationController

  before_action :require_login, only:[:index, :show, :create, :destroy]

  def index
  end

  def show
      @idea = BrightIdea.find(params[:id])
  end

  def create
      idea = BrightIdea.new ( idea_params)
      if idea.valid?
          idea.save
          redirect_to :back
      else
          flash[:idea_creeate_error] = "Invalid idea. Please try again."
          redirect_to 'bright_ideas'
      end
  end

  def destroy
      idea = BrightIdea.find(params[:id])
      idea.destroy
      redirect_to :back
  end


  private
  def idea_params
      params.require(:bright_idea).permit(:content, :user_id)
  end
end
