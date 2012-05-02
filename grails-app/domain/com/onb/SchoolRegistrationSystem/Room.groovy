package com.onb.SchoolRegistrationSystem

class Room {
	String idNumber
	String building

    static constraints = {
	idNumber nullable:false, blank:false, size:1..8, unique:true
	building nullable:false, blank:false
    }
}
