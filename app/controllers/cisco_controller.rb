require 'rubygems'
require 'twilio-ruby'

class CiscoController < ApplicationController
  def ise_guest
    JSON.parse(params[:mandrill_events]).each do |event|
      message = event['msg']['text']
      puts "\n\n\n\n******Message Text:\n\n#{message}\n\n\n\n"
      attributes = parse_email(message)

      send_message(attributes[:to], "Your Teamsquare WiFi username is #{attributes[:username]} and password is #{attributes[:password]}.")
    end

    render :json => {:success => true}, :status => 200
  end

  def head_ise_guest
    render :json => {:sucess => true}, :status => 200
  end

end