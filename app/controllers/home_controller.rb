class HomeController < ApplicationController
  def index
    @version = ActiveRecord::Base.connection.execute("SELECT version();").first["version"]
  end
end
