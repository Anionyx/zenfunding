class DeadPeopleController < ApplicationController
  before_action :set_dead_person, only: [:show, :edit, :update, :destroy]

  # GET /dead_people
  # GET /dead_people.json
  def index
    @dead_people = DeadPerson.all
  end

  # GET /dead_people/1
  # GET /dead_people/1.json
  def show
  end

  # GET /dead_people/new
  def new
    @dead_person = DeadPerson.new
  end

  # GET /dead_people/1/edit
  def edit
  end

  # POST /dead_people
  # POST /dead_people.json
  def create
    @dead_person = DeadPerson.new(dead_person_params)

    respond_to do |format|
      if @dead_person.save
        format.html { redirect_to @dead_person, notice: 'Dead person was successfully created.' }
        format.json { render :show, status: :created, location: @dead_person }
      else
        format.html { render :new }
        format.json { render json: @dead_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dead_people/1
  # PATCH/PUT /dead_people/1.json
  def update
    respond_to do |format|
      if @dead_person.update(dead_person_params)
        format.html { redirect_to @dead_person, notice: 'Dead person was successfully updated.' }
        format.json { render :show, status: :ok, location: @dead_person }
      else
        format.html { render :edit }
        format.json { render json: @dead_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dead_people/1
  # DELETE /dead_people/1.json
  def destroy
    @dead_person.destroy
    respond_to do |format|
      format.html { redirect_to dead_people_url, notice: 'Dead person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dead_person
      @dead_person = DeadPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dead_person_params
      params.require(:dead_person).permit(:name_first, :name_mid, :name_last, :date_death, :date_birth, :ssn, :cause)
    end
end
