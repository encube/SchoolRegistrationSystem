package com.onb.SchoolRegistrationSystem

class Student {
	String idNumber
	String firstName
	String lastName
	int level
	Date registrationDate

    static constraints = {
	idNumber nullable:false, blank:false, size:1..8, unique:true
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
	level nullable:false, blank:false, range:1..4
	registrationDate nullable:false, blank:false
    }
}
