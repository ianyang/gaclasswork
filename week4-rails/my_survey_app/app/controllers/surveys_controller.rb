class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end
  def new
    @survey = Survey.new
    3.times do
      question = @survey.questions.build
      4.times { question.answers.build }
    end
  end
  def create
    @survey = Survey.create(params[:survey])
    render :show
  end
  def show
    @survey = Survey.find(params[:id])
  end
  def edit
    @survey = Survey.find(params[:id])
  end
  def update
    @survey = Survey.find(params[:id])
    @survey.update_attributes(params[:survey])
    render :show
  end
  def destroy
    survey = Survey.find(params[:id])
    survey.delete
    redirect_to(surveys_path)
  end

end
