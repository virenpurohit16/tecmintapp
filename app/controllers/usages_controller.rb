class UsagesController < ApplicationController
  before_action :set_usage, only: %i[ show edit update destroy ]

  # GET /usages or /usages.json
  def index
    @usages = Usage.all
  end

  # GET /usages/1 or /usages/1.json
  def show
  end

  # GET /usages/new
  def new
    @usage = Usage.new
  end

  # GET /usages/1/edit
  def edit
  end

  # POST /usages or /usages.json
  def create
    @usage = Usage.new(usage_params)

    respond_to do |format|
      if @usage.save
        format.html { redirect_to usage_url(@usage), notice: "Usage was successfully created." }
        format.json { render :show, status: :created, location: @usage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usages/1 or /usages/1.json
  def update
    respond_to do |format|
      if @usage.update(usage_params)
        format.html { redirect_to usage_url(@usage), notice: "Usage was successfully updated." }
        format.json { render :show, status: :ok, location: @usage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usages/1 or /usages/1.json
  def destroy
    @usage.destroy

    respond_to do |format|
      format.html { redirect_to usages_url, notice: "Usage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usage
      @usage = Usage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usage_params
      params.require(:usage).permit(:name)
    end
end
