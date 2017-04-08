class PageController < ApplicationController
  def index
  end

  def stress
    @data = Array.new(1000000) { rand(1...9) }
    @result = @data.sum
  end
end
