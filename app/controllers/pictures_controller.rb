require 'active_scaffold'
class PicturesController < ApplicationController
    active_scaffold :"picture" do |conf|
  end
end
