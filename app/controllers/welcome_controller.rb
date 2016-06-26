class WelcomeController < ApplicationController
  def index
    env['warden'].authenticate! :password
    render json: 'secret content'
  end
end
