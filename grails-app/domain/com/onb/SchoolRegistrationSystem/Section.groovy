package com.onb.SchoolRegistrationSystem

class Section {
	static final int maxStudent = 30
	
	Subject subject
	TimeSlot timeSlot
	Teacher teacher
	Enrollment enrollment

	static belongsTo = [Subject, TimeSlot, Teacher, Enrollment]
	static hasMany = [enrollments : Enrollment]
	
	
    static constraints = {
    }
}
