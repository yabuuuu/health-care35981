class HealthsController < ApplicationController
  def index
    @data = {'炭水化物:50〜65%' => 57,  '脂質:20〜30%' => 25, 'タンパク質:13〜20%' => 16}
  end
  
end
