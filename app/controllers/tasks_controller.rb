class TasksController < ApplicationController
    def new
        @task = Task.new
        @tasks = Task.all
    end
    
    def create
        @task = Task.create!(description: params[:task][:description])
        redirect_to root_path
    end
    
    def show
        @task = Task.find(params[:id])
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy!
        redirect_to root_path
    end
end
