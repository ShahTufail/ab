class Author < ActiveRecord::Base
	has_many :books, :dependent => :destroy
	has_many :pictures
	validates :name, presence:true

# ActiveScaffold security template: #{column_name}_authorized_for_#{crud_type}?
 # def user_update
    # As soon as this method will return false 
    # the username field will not be available on the update form
  #  return false # Write logic to decide if username field should be visible
#  end
 # attr_accessible :name

	def authorized_for_update?  
	    if self.name == "Shakespeare"
	    	return true
	    elsif self.name == "Priyanka Singh"
	    	return true
	    else
	    	return false
	    end
	end


	def authorized_for_delete?  
		    if self.name == "Shakespeare"
		    	return true
		    elsif self.name == "Bismillah Khan"
		    	return true
		    	 elsif self.name == "henry theodore"
		    	return true
		    else
		    	return false
		    end
	end

	def authorized_for_read?  
		    if self.name == "zzzz"
		    	return false
		    else
		    	return true
		    end
	end


	after_touch do
	 puts 'The Author was touched'
	end


after_destroy do
	puts " You removed the Author from the list"
end


end
