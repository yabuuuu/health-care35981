class UsersController < ApplicationController
  def show
    @weight = Weight.all
  end
end
