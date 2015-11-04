class AdventureItemsController < ApplicationController
  before_action :set_adventure_item, only: [:show, :edit, :update, :destroy]

  # GET /adventure_items
  # GET /adventure_items.json
  def index
    @adventure_items = AdventureItem.all
  end

  # GET /adventure_items/1
  # GET /adventure_items/1.json
  def show
  end

  # GET /adventure_items/new
  def new
    @adventure_item = AdventureItem.new
  end

  # GET /adventure_items/1/edit
  def edit
  end

  # POST /adventure_items
  # POST /adventure_items.json
  def create
    @adventure_item = AdventureItem.new(adventure_item_params)

    respond_to do |format|
      if @adventure_item.save
        format.html { redirect_to @adventure_item, notice: 'Adventure item was successfully created.' }
        format.json { render :show, status: :created, location: @adventure_item }
      else
        format.html { render :new }
        format.json { render json: @adventure_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adventure_items/1
  # PATCH/PUT /adventure_items/1.json
  def update
    respond_to do |format|
      if @adventure_item.update(adventure_item_params)
        format.html { redirect_to @adventure_item, notice: 'Adventure item was successfully updated.' }
        format.json { render :show, status: :ok, location: @adventure_item }
      else
        format.html { render :edit }
        format.json { render json: @adventure_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adventure_items/1
  # DELETE /adventure_items/1.json
  def destroy
    @adventure_item.destroy
    respond_to do |format|
      format.html { redirect_to adventure_items_url, notice: 'Adventure item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure_item
      @adventure_item = AdventureItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventure_item_params
      params.require(:adventure_item).permit(:title, :city, :neighborhood, :category, :points, :picture)
    end
end
