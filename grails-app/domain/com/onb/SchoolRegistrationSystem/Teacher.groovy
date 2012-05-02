package com.onb.SchoolRegistrationSystem

class Teacher {
	String idNumber
	String firstName
	String lastName

    static constraints = {
	idNumber nullable:false, blank:false, size:1..8, unique:true
	firstName nullable:false, blank:false
	lastName nullable:false, blank:false
    }
}
