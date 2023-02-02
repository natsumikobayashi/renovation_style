class Observer::ManagersController < ApplicationController
  before_action :authenticate_observer!
  def index
    @managers = Manager.all
  end
end
