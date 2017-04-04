class Book < ActiveRecord::Base
	belongs_to :author

	after_create do 
		puts "the book was created"	
	end

	before_destroy do
	puts 'Are you sure you want to delete the book'
	end

	after_destroy do
		puts "Book object destroyed"
	end

	after_touch :tch do
	  private
	  def tch
	    puts 'The book was touched'
	  end
	end


  attr_accessible :name
	def authorized_for_update?  
		    if self.name == "Indian History"
		    	return true
		    elsif self.name == "aaaa"
		    	return true
		    else
		    	return false
		    end
	end


  attr_accessible :name
	def authorized_for_delete?  
		    if self.name == "The Wind"
		    	return true
		    elsif self.name == "Daffodils"
		    	return true
		    else
		    	return false
		    end
	end




end
