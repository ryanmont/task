class ListTypesController < ApplicationController
  before_action :set_list_type, only: [:show, :edit, :update, :destroy]

  # GET /list_types
  # GET /list_types.json
  def index
    @list_types = current_user.list_types
    # @list_types = ListType.all
  
  end

  # GET /list_types/1
  # GET /list_types/1.json
  def show
    @list_type= ListType.find(params[:id])
    @lists = @list_type.lists
    # @list = current_user.list
  end

  # GET /list_types/new
  def new
    @list_type = current_user.list_types.new
  end

  # GET /list_types/1/edit
  def edit
  end

  # POST /list_types
  # POST /list_types.json
  def create
    @list_type = current_user.list_types.build(list_type_params)

    respond_to do |format|
      if @list_type.save
        format.html { redirect_to @list_type, notice: "Beautiful! #{@list_type.category} list is officially here" }
        format.json { render :show, status: :created, location: @list_type }
      else
        format.html { render :new }
        format.json { render json: @list_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_types/1
  # PATCH/PUT /list_types/1.json
  def update
    respond_to do |format|
      if @list_type.update(list_type_params)
        format.html { redirect_to @list_type, notice: 'Category successfully updated!' }
        format.json { render :show, status: :ok, location: @list_type }
      else
        format.html { render :edit }
        format.json { render json: @list_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_types/1
  # DELETE /list_types/1.json
  def destroy
    @list_type.destroy
    respond_to do |format|
      format.html { redirect_to list_types_url, notice: 'Category successfully kicked to the curb!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_type
      # @list_type = current_user.list_types.find(params[:id])
      @list_type = ListType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_type_params
      params.require(:list_type).permit(:category,:user_id)
    end
end
