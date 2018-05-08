class MytasksController < ApplicationController
  before_action :set_mytask, only: [:show, :edit, :update, :destroy]

  # GET /mytasks
  # GET /mytasks.json
  def index
    @mytasks = Mytask.all
  end

  # GET /mytasks/1
  # GET /mytasks/1.json
  def show
  end

  # GET /mytasks/new
  def new
    @mytask = Mytask.new
  end

  # GET /mytasks/1/edit
  def edit
  end

  # POST /mytasks
  # POST /mytasks.json
  def create
    @mytask = Mytask.new(mytask_params)

    respond_to do |format|
      if @mytask.save
        format.html { redirect_to @mytask, notice: 'Mytask was successfully created.' }
        format.json { render :show, status: :created, location: @mytask }
      else
        format.html { render :new }
        format.json { render json: @mytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytasks/1
  # PATCH/PUT /mytasks/1.json
  def update
    respond_to do |format|
      if @mytask.update(mytask_params)
        format.html { redirect_to @mytask, notice: 'Mytask was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytask }
      else
        format.html { render :edit }
        format.json { render json: @mytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytasks/1
  # DELETE /mytasks/1.json
  def destroy
    @mytask.destroy
    respond_to do |format|
      format.html { redirect_to mytasks_url, notice: 'Mytask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytask
      @mytask = Mytask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytask_params
      params.require(:mytask).permit(:title, :description, :due, :hours, :percent, :image, :other)
    end
end
