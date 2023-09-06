class MachinesController < ApplicationController
  before_action :set_machine, only: %i[ show edit update destroy ]

  before_action :authenticate_user!
  before_action :authorize_admin, only: [:new, :create, :edit, :update, :destroy]


  # GET /machines or /machines.json
  def index
    @machines = Machine.all
  end

  # GET /machines/1 or /machines/1.json
  def show
    @machine = Machine.find(params[:id])
  end

  # GET /machines/new
  def new
    @type_engines = TypeEngine.all
    @machine = Machine.new
  end

  # GET /machines/1/edit
  def edit
    @type_engines = TypeEngine.all
  end

  # POST /machines or /machines.json
  def create
    @machine = Machine.new(machine_params)

    respond_to do |format|
      if @machine.save
        format.html { redirect_to machine_url(@machine), notice: "Machine was successfully created." }
        format.json { render :show, status: :created, location: @machine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machines/1 or /machines/1.json
  def update
    respond_to do |format|
      if @machine.update(machine_params)
        format.html { redirect_to machine_url(@machine), notice: "Machine was successfully updated." }
        format.json { render :show, status: :ok, location: @machine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machines/1 or /machines/1.json
  def destroy
    @machine.destroy

    respond_to do |format|
      format.html { redirect_to machines_url, notice: "Machine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def authorize_admin
      unless current_user && current_user.admin?
        flash[:alert] = "No tienes permisos para realizar esta acción."
        redirect_to root_path
      end
    end

    def set_type_engine
      @type_engines = TypeEngine.all
    end

    def set_machine
      @machine = Machine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def machine_params
      params.require(:machine).permit(:name, :description, :image, :type_engine_id)
    end
end
