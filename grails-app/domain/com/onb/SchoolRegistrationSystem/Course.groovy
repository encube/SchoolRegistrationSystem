package com.onb.SchoolRegistrationSystem

class Course {
	String name
	String description

    static constraints = {
	name nullable:false, blank:false
	description nullable:false, blank:false
    }
}
