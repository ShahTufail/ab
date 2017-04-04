require 'active_scaffold'
class BooksController < ApplicationController
   active_scaffold :"book" do |conf|
   #	 conf.actions.exclude :update, :delete
     conf.columns.exclude :price
  end
end
