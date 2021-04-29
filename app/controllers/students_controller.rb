class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find_by_id(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(user_params)
        if @student.save
            redirect_to student_path(@student)
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        @student.update(user_params)

        redirect_to student_path(@student)
    end



    private

    def user_params
        params.require(:student).permit(:first_name, :last_name)
    end



end