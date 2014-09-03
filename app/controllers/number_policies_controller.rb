class NumberPoliciesController < ApplicationController
  before_action :set_number_policy, only: [:show, :edit, :update, :destroy]

  # GET /number_policies
  # GET /number_policies.json
  def index
    @number_policies = NumberPolicy.all
  end

  # GET /number_policies/1
  # GET /number_policies/1.json
  def show
  end

  # GET /number_policies/new
  def new
    @number_policy = NumberPolicy.new
  end

  # GET /number_policies/1/edit
  def edit
  end

  # POST /number_policies
  # POST /number_policies.json
  def create
    @number_policy = NumberPolicy.new(number_policy_params)

    respond_to do |format|
      if @number_policy.save
        format.html { redirect_to @number_policy, notice: 'Number policy was successfully created.' }
        format.json { render :show, status: :created, location: @number_policy }
      else
        format.html { render :new }
        format.json { render json: @number_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /number_policies/1
  # PATCH/PUT /number_policies/1.json
  def update
    respond_to do |format|
      if @number_policy.update(number_policy_params)
        format.html { redirect_to @number_policy, notice: 'Number policy was successfully updated.' }
        format.json { render :show, status: :ok, location: @number_policy }
      else
        format.html { render :edit }
        format.json { render json: @number_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_policies/1
  # DELETE /number_policies/1.json
  def destroy
    @number_policy.destroy
    respond_to do |format|
      format.html { redirect_to number_policies_url, notice: 'Number policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number_policy
      @number_policy = NumberPolicy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_policy_params
      params.require(:number_policy).permit(:policy_amount, :dead_person_id)
    end
end
