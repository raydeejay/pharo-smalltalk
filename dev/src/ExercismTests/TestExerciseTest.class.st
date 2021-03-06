Class {
	#name : #TestExerciseTest,
	#superclass : #ExercismTest,
	#category : #'ExercismTests-TestExercise'
}

{ #category : #config }
TestExerciseTest class >> exercise [
	^(ExercismExercise for: self)
		isCore: false;
		difficulty: 1;
		topics: #('testing');
		yourself
]

{ #category : #config }
TestExerciseTest class >> uuid [
	"Answer a unique id for this exercise"
	^'dc7b1fff-f0be-460d-b146-ee84c2acc000'
]

{ #category : #config }
TestExerciseTest class >> version [
	^'1.0.0'
]
