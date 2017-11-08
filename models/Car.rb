class Car < ActiveRecord::Base

	## don't always have to do this part but if activerecord 
	## can't find your table this will help

	self.table_name = 'cars'





end	