class PolicyValuationsController < ApplicationController
  before_action :set_policy_valuation, only: [:show, :edit, :update, :destroy]

  # GET /policy_valuations
  # GET /policy_valuations.json
  def index
    @policy_valuations = PolicyValuation.all
  end

  # GET /policy_valuations/1
  # GET /policy_valuations/1.json
  def show
  end

  # GET /policy_valuations/new
  def new
    @policy_valuation = PolicyValuation.new
  end

  # GET /policy_valuations/1/edit
  def edit
  end

  # POST /policy_valuations
  # POST /policy_valuations.json
  def create
    @policy_valuation = PolicyValuation.new(policy_valuation_params)

    respond_to do |format|
      if @policy_valuation.save
        format.html { redirect_to @policy_valuation, notice: 'Policy valuation was successfully created.' }
        format.json { render :show, status: :created, location: @policy_valuation }
      else
        format.html { render :new }
        format.json { render json: @policy_valuation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policy_valuations/1
  # PATCH/PUT /policy_valuations/1.json
  def update
    respond_to do |format|
      if @policy_valuation.update(policy_valuation_params)
        format.html { redirect_to @policy_valuation, notice: 'Policy valuation was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy_valuation }
      else
        format.html { render :edit }
        format.json { render json: @policy_valuation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_valuations/1
  # DELETE /policy_valuations/1.json
  def destroy
    @policy_valuation.destroy
    respond_to do |format|
      format.html { redirect_to policy_valuations_url, notice: 'Policy valuation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_valuation
      @policy_valuation = PolicyValuation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_valuation_params
      params.require(:policy_valuation).permit(:amount, :date_assign, :policy_id, :dead_person_id)
    end
end
