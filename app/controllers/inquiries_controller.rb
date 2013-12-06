class InquiriesController < ApplicationController
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.save
  end
end
