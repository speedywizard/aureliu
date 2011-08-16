class KiosksController < ApplicationController
  def index
  end

  def about
  end

  def kiosks
    @kiosks = Kiosk.order("install_date DESC")

    respond_to do |format|
      format.html
    end
  end

  def show
    @kiosk = Kiosk.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
