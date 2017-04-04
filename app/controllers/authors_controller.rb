require 'active_scaffold'
class AuthorsController < ApplicationController
    active_scaffold :"author" do |conf|
    	  list.columns.exclude :pictures
    	  columns[:books].label = "Author's Collection"
 

  end
end
