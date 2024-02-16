class PeopleController < ApplicationController
  # GET /people
  def index
    people = Person.all
    render json: people
  end

  # GET /people/:id
  def show
    person = Person.find(params[:id])
    render json: person
  end

  # GET /people/:id/detail
  def detail
    person = Person.find(params[:id])
    render json: person.detail
  end

  # POST /people
  def create
    person = Person.new(person_params)
    if person.save
      render json: person, status: :created, location: person
    else
      render json: person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/:id
  def update
    person = Person.find(params[:id])
    if person.update(person_params)
      render json: person
    else
      render json: person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/:id
  def destroy
    person = Person.find(params[:id])
    person.destroy
    head :no_content
  end

  private

  def person_params
    params.require(:person).permit(:name, :email)
  end
end
