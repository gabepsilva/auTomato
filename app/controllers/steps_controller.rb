class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  before_action :set_change, only: [:create] # new crash to create new step
  before_action :process_assignedTo, only: [:update]


  # GET /steps
  # GET /steps.json
  def index
    @steps = Step.all
  end

  # GET /steps/1
  # GET /steps/1.json
  def show

    @log = Log.create
    @log.step = @step

  end

  def upload

  end

  # GET /steps/new
  def new
    @step = Step.new
    @step.change_id = params[:change_id]

    @change = Change.find(params[:change_id])
    @step.stepNo = @change.steps.count + 1

    @step.assignedTo = Staff.first

    @step_statuses = StepStatus.all


  end

  # GET /steps/1/edit
  def edit


    @step_statuses = StepStatus.all

    respond_to do |format|
      format.js
    end

  end


  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(step_params)
    #Nobody is the first record in the table
    @step.assignedTo = Staff.first

    @step.stepNo = @step.change.steps.count +1

    respond_to do |format|
      if @step.save
        format.html { redirect_to @change, notice: 'Step was successfully created.' }
        format.json { render :show, status: :created, location: @step }
      else
        format.html { render :new }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    respond_to do |format|


      if @step.update(step_params)
        format.html { redirect_to @step.change, notice: 'Step was successfully updated.' }
        format.json { render :show, status: :ok, location: @step }
      else
        format.html { redirect_to  @step.change, notice: @step.errors }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step.destroy

    recount_steps

    respond_to do |format|
      format.html { redirect_to @step.change, notice: 'Step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

  def set_change
    @step = Step.new(step_params)

    @change = if @step.nil?
                Change.find(params[:change_id])
              else
                @step.change
              end
  end


  def recount_steps
    counter = 1

    @step.change.steps.each do |step|
      step.stepNo = counter
      step.save
      counter = counter +1
    end

  end


  # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      #params.require(:step).permit(:stepNo, :action, :status, :log, :change_id)
      params.require(:step).permit(:stepNo, :action, :status, :log, :change_id, assignedTo_attributes: [:id])
    end

  def process_assignedTo
    @step.assignedTo = Staff.find_by_id(params[:step][:assignedTo_attributes][:id].to_i) unless @step.assignedTo.id == params[:step][:assignedTo_attributes][:id].to_i
  end

end
