class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    # @customer = Customer.find(params[:customer])
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    @customer = Customer.new
    @customer = Customer.find_or_create_by(email:booking_params[:email]) do |cust|
      cust.name = booking_params[:name]
      cust.street = booking_params[:street]
      cust.suburb = booking_params[:suburb]
      cust.postcode = booking_params[:postcode]
    end
    @customer.update_attributes(name: booking_params[:name], street:booking_params[:street], suburb:booking_params[:suburb],postcode:booking_params[:postcode])


    @booking.customer = @customer

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_path(@booking), notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:customer_id,:cleaning_type, :in_win, :out_win, :fridge, :balcony, :date, :time, :street, :suburb, :postcode,:name,:email)
    end
end
