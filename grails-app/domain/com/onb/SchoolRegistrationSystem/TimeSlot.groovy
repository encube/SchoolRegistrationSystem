package com.onb.SchoolRegistrationSystem

class TimeSlot {
	String days
	int start
	int end
	
	static hasMany = [sections : Section]

    static constraints = {
		days nullable:false, blank:false
		start nullable:false, blank:false
		end nullable:false, blank:false
    }
}
