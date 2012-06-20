class ApplicationController < ActionController::Base
  protect_from_forgery
  layout false

  def index
    @entries = Entry.all
  end
end
