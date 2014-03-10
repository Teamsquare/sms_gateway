class CiscoController < ApplicationController
  def ise_guest
    # ugly debugging on heroku until we get a sample of the payload from mandrill
    throw params[:mandrill_events]
  end
end