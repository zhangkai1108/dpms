class SessionController < ApplicationController
  def login
    @identity = Identity.new
  end
  def create
    @identity = Identity.new
  end
end
