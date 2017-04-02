class PersonsController < ApplicationController
  def index
  end
  
  def show
      @person = Person.find(params[:id])
  end
   
  def new
  end
  
end
