class MaintsController < ApplicationController
  before_action :set_maint, only: %i[ show edit update destroy ]

  # GET /maints or /maints.json
  def index
    @maints = Maint.all
  end

  # GET /maints/1 or /maints/1.json
  def show
  end

  # GET /maints/new
  def new
    @maint = Maint.new
  end

  # GET /maints/1/edit
  def edit
  end

  # POST /maints or /maints.json
  def create
    @maint = Maint.new(maint_params)

    respond_to do |format|
      if @maint.save
        format.html { redirect_to maint_url(@maint), notice: "Maint was successfully created." }
        format.json { render :show, status: :created, location: @maint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maints/1 or /maints/1.json
  def update
    respond_to do |format|
      if @maint.update(maint_params)
        format.html { redirect_to maint_url(@maint), notice: "Maint was successfully updated." }
        format.json { render :show, status: :ok, location: @maint }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maints/1 or /maints/1.json
  def destroy
    @maint.destroy

    respond_to do |format|
      format.html { redirect_to maints_url, notice: "Maint was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maint
      @maint = Maint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maint_params
      params.require(:maint).permit(:photo, :date, :type_engine_id, :user_id, :type_maint_id, :machine_id, :materials)
    end
end
