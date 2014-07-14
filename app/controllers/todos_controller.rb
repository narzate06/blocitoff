class TodosController < ApplicationController

  def index
    @todos = Todo.all 
  end

  def show
    @todo = Todo.find params[:id]
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params.require(:todo).permit(:description, :days_left, :complete))
    @todo = current_user.todos.build(params.require(:todo).permit(:description, :days_left, :complete))
    @todo.save
    redirect_to @todo, notice: 'Your new TODO was saved.' 
  end

  def complete
    @todo = Todo.find(params[:id])
    @todo.complete = true
    @todo.save
    
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end

end