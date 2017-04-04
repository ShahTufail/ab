class StaffsController < ApplicationController
  active_scaffold :"staff" do |conf|
	
	#config.actions = [:create, :update]
	#list.actions.exclude :s#
	#list.columns.exclude :name

   end
end
