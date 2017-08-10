class WelcomeController < ApplicationController
  def show
    render status: 200, text: 'Welcome to EFFL Football!'
  end
end
