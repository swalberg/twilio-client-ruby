class ClientController < ApplicationController
  def index
  end

  def incoming

    response = Twilio::TwiML::Response.new do |r|
      r.Dial  do |d|
        d.Client 'jenny'
      end
    end

    render :text => response.text

  end

end
