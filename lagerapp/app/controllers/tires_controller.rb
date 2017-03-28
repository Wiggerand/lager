class TiresController < ApplicationController
  before_action :set_tire, only: [:show, :edit, :update, :destroy]
  before_action :set_customer
  before_action :set_car
  # GET /tires
  # GET /tires.json
  def index
    @tires = @car.tires
  end

  # GET /tires/1
  # GET /tires/1.json
  def show
  end

  # GET /tires/new
  def new
    @tire = @car.tires.new
  end

  # GET /tires/1/edit
  def edit
  end

  # POST /tires
  # POST /tires.json
  def create
    @tire = @car.tires.new(tire_params)
   
    respond_to do |format|
      if @tire.save
         
        format.html { redirect_to customer_car_tires_path(@customer.id, @car.id), notice: 'Tire was successfully created.' }
        format.json { render :show, status: :created, location: @tire }
      else
        format.html { render :new }
        format.json { render json: @tire.errors, status: :unprocessable_entity }
      
    end
  end
end
  # PATCH/PUT /tires/1
  # PATCH/PUT /tires/1.json
  def update
    respond_to do |format|
      if @tire.update(tire_params)
        format.html { redirect_to customer_car_tire_path(@customer.id, @car.id, @tire.id), notice: 'Tire was successfully updated.' }
        format.json { render :show, status: :ok, location: @tire }
      else
        format.html { render :edit }
        format.json { render json: @tire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tires/1
  # DELETE /tires/1.json
  def destroy
    @tire.destroy
    respond_to do |format|
      format.html { redirect_to customer_car_tires_path(@customer.id, @car.id), notice: 'Tire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tire
     #@tire = @car.tire.find(params[:id])
     @tire = Tire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tire_params
      params.require(:tire).permit(:producer, :tiresize, :dotweek, :dotyear, :storage1, :rack, :case, :car_id)
    end

    def set_customer
     @customer = Customer.find(params[:customer_id])
    end

    def set_car
      @car = @customer.cars.find(params[:car_id])
    end
end
