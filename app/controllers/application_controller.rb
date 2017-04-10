class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  around_action def benchmark; ResourceMonitor.benchmark(self); yield; ResourceMonitor.benchmark(self); end
end
