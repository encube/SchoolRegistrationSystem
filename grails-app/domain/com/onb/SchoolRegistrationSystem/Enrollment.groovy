package com.onb.SchoolRegistrationSystem

class Enrollment {
	Date enrollmentDate
	int schoolYear
	String semester

    static constraints = {
	enrollmentDate nullable:false, blank:false
	schoolYear nullable:false, blank:false
	semester nullable:false, blank:false
    }
}
