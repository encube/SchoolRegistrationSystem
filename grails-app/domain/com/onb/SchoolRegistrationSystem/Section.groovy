package com.onb.SchoolRegistrationSystem

class Section {
	int maxStudent = 30

    static constraints = {
	maxStudent nullable:false, range:0..30
    }
}
