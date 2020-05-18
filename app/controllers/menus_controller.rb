class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_warung!, except: [:index, :show, :destroy]
  
  def index
    @menus = Menu.all
  end
 
  def show
  end

  def new
    @menu = current_warung.menus.build
  end
  
  def edit
  end  
  
  def create
    @menu = current_warung.menus.build(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @current_warung = current_warung.id
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menu_saya_path, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def menu_saya
    @menus = Menu.all
    @menu = Menu.find_by_id(current_warung.menus.ids)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menu_params
      params.require(:menu).permit(:nama, :harga, :image)
    end
end
