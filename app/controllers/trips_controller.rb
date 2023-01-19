# frozen_string_literal: true

# TripsController
class TripsController < ApplicationController
  before_action :set_trip, only: %i[show edit update destroy]

  # GET /trips
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  def show
    # for render
  end

  # GET /trips/new
  def new
    @trip = Trip.new
    @trip.routes.build
    @trip.expense_trackers.build
  end

  # GET /trips/1/edit
  def edit
    # for render
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to trip_url(@trip), notice: 'Trip was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to trip_url(@trip), notice: 'Trip was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
    end
  end

  def add_route_field
    helpers.fields model: Trip.new do |f|
      f.fields_for :routes, Route.new, child_index: Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond) do |ff|
        render turbo_stream: turbo_stream.append(
          "route_fields_forms",
          partial: "trips/route_fields",
          locals: { f: ff }
        )
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_trip
    @trip = Trip.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def trip_params
    params.require(:trip).permit(Trip.attribute_names, routes_attributes: Route.attribute_names + ['_destroy'],
                                                       expense_trackers_attributes: ExpenseTracker.attribute_names + ['_destroy'])
  end
end
