class ApplicationController < ActionController::Base
  protect_from_forgery
  layout false
  before_filter :set_host

  def index
    @entries = Entry.all
  end

  def install
    render 'install.erb', type: 'text/plain'
  end

  def hydra
    send_file Rails.root.join('cli', 'hydra'), type: 'text/plain'
  end

private

  def set_host
    @host = "http://localhost:3000"
  end
end
