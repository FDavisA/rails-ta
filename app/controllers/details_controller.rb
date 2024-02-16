class DetailsController < ApplicationController
  before_action :set_person

  # GET /people/:person_id/detail
  def show
    render json: @person.detail
  end

  # POST /people/:person_id/detail
  def create
    @detail = @person.build_detail(detail_params)
    if @detail.save
      render json: @detail, status: :created
    else
      render json: @detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/:person_id/detail
  def update
    if @person.detail.update(detail_params)
      render json: @person.detail
    else
      render json: @person.detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/:person_id/detail
  def destroy
    @person.detail.destroy
    head :no_content
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def detail_params
    params.require(:detail).permit(:title, :age, :phone, :email)
  end
end
