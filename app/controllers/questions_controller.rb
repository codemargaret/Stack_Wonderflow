class QuestionsController < ApplicationController

  def show
    @list = List.find(params[:id])
    render :show
  end
end
