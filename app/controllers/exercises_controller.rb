class ExercisesController < ApplicationController
  before_action :set_exercise, only: %i[show edit update destroy confirm_destroy]

  def index
    @exercises = Exercise.all
  end

  def show
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to @exercise, notice: 'Exercício criado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to @exercise, notice: 'Exercício atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to exercises_url, notice: 'Exercício deletado com sucesso.'
  end

  def confirm_destroy
    # Aqui, estamos apenas buscando o exercício, não é necessário salvar nada ainda
    @exercise = Exercise.find(params[:id])
  end

  private

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:name, :weight, :reps)
  end
end
