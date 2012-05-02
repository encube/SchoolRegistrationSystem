package com.onb.SchoolRegistrationSystem

class Subject {
	String name
	BigDecimal fee

    static constraints = {
	name nullable:false, blank:false
	fee nullable:false, blank:false
    }
}
