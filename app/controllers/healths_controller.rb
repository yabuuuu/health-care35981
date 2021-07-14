class HealthsController < ApplicationController
  def index
    @data = {'睡眠' => 100, '食事' => 200, '活動' => 150}
  end
  
end
