package com.onb.SchoolRegistrationSystem

class Subject {
	String name
	BigDecimal fee

	Course course
	
	static belongsTo = Course
	static hasMany = [sections : Section, courses : Course]
	
    static constraints = {
		name nullable:false, blank:false
		fee nullable:false, blank:false
    }
}
