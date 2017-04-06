class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
 # before_action :sendmail
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
    
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    
  end
  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to customers_path, notice: 'Kundendaten wurden erfolreich geändert.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def sendmail
     # @customer = Customer.first
     # mail(to: @customer.email, subject: 'Welcome to My Awesome Site')
      @customers = Customer.all
      @customers.each do |customer|
      CustomerMailer.send_mail(customer).deliver_later
      #redirect_to root_path, notice: 'Email is send out.' Läuft noch nicht--------------------------------

    end
      #redirect_to customer_path, notice: 'Email is send out.'
    end    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:dear, :firstname, :lastname, :street, :city, :plz, :tel, :email, :privacypolicy)
    end

   
end
