class SchoolClassesController < ApplicationController
    
    def index
        @school_class = SchoolClass.all

    end

    def show

    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(user_params)
        if @school_class.save
            redirect_to @school_class
        else
            render :new
        end
    end

    def edit

    end

    def update
        @school_class.update(user_params)
    end


    private

    def user_params
        params.require(:school_class).permit(:title, :room_number)
    end


end
