class EntriesController < ApplicationController
    def index
        @entries = Entry.all
    end

    def new 
        @entry = Entry.new
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def create
        current_user.entries.build(entry_params)
        
        if @entry.save
        redirect_to @entry
        else
        render :new
        end
    end

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])
        if @entry.update(entry_params)
            redirect_to @entry
          else
            render :show
          end
    end

    def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy

        redirect_to index_path
    end

    private
    def entry_params
        params.require(:entry).permit(:current_weight, :meal_type, :calories, :carbohydrates, :fats, :proteins, :current_date)
    end
end
