class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :resource_monitor_app
  after_action :resource_monitor_app

  def resource_monitor_app
    ResourceMonitor.benchmark(self)
  end
end
