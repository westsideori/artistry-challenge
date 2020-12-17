class InstrumentsController < ApplicationController
    before_action :find_instrument, only: [:show, :edit, :update, :destroy]
    def index
        @instruments = Instrument.all
    end

    def show
    end

    def new
        @instrument = Instrument.new
    end

    def create
        instrument = Instrument.create(instrument_params(:name, :classification))
        if instrument.valid?
            redirect_to instrument_path(instrument)
        else
            flash[:errors_array] = instrument.errors.full_messages
            redirect_to new_instrument_path(instrument)
        end
    end

    def edit
    end

    def update
        if @instrument.update(instrument_params(:name, :classification))
            redirect_to instrument_path(@instrument)
        else
            flash[:errors_array] = @instrument.errors.full_messages
            redirect_to edit_instrument_path(@instrument)
        end
    end

    def destroy
        @instrument.destroy
        redirect_to instruments_path
    end

    private

    def find_instrument
        @instrument = Instrument.find(params[:id])
    end

    def instrument_params(*args)
        params.require(:instrument).permit(*args)
    end
end
