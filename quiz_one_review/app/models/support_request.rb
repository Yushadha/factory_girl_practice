class SupportRequest < ActiveRecord::Base

	default_scope { order("done ASC")}

	DEPARTMENTS = [ "sales", "marketing", "technical"]

end
