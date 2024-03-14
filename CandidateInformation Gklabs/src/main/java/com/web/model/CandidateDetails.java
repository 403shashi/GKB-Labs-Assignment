package com.web.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
public class CandidateDetails {
 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private Long id;
 private String name;
 private String email;
 private int age;
 private LocalDate dateOfBirth;
public CandidateDetails() {
	super();
}
public CandidateDetails(String name, String email, int age, LocalDate dateOfBirth) {
	super();
	this.name = name;
	this.email = email;
	this.age = age;
	this.dateOfBirth = dateOfBirth;
}
public String getName() {
	return name;
}
public String getEmail() {
	return email;
}
public int getAge() {
	return age;
}
public LocalDate getDateOfBirth() {
	return dateOfBirth;
}
public void setName(String name) {
	this.name = name;
}
public void setEmail(String email) {
	this.email = email;
}
public void setAge(int age) {
	this.age = age;
}
public void setDateOfBirth(LocalDate dateOfBirth) {
	this.dateOfBirth = dateOfBirth;
}
@Override
public String toString() {
	return "CandidateDetails [name=" + name + ", email=" + email + ", age=" + age + ", dateOfBirth=" + dateOfBirth
			+ "]";
}
 


}