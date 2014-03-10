require 'rubygems'
require 'twilio-ruby'

class CiscoController < ApplicationController
  def ise_guest
    params[:mandrill_events].each do |event|
      event['msg'].each do |message|
        attributes = parse_email message['text']

        send_message(attributes[:to], "Your Teamsquare WiFi username is #{attributes[:username]} and password is #{attributes[:password]}.")
      end
    end
  end

  def head_ise_guest
    render :json => {:sucess => true}, :status => 200
  end
end