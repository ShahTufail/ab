class Staff < ActiveRecord::Base
	
	after_save :background_check

 protected
 def background_check
  # check through a list of 10000000000001 mil different
  # databases that takes approx one hour :)
  if( check_for_record_in_www( self.username ) )
    # code that is run after the 1 hour process is finished.
    user.update_attribute( :has_record )
  end
 end
end
