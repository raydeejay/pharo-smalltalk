"
A simple solution to bracket exercise using a Stack
"
Class {
	#name : #BracketPush,
	#superclass : #Object,
	#category : #'Exercism-BracketPush'
}

{ #category : #'private-constants' }
BracketPush >> delimiterPairs [
	^ #('()' '[]' '{}')
]

{ #category : #'private-testing' }
BracketPush >> is: closeChar closingBracketFor: openChar [
	^ self delimiterPairs
		detect: [ :each | each first = openChar & (each last = closeChar) ]
		ifFound: [ true ]
		ifNone: [ false ]
]

{ #category : #exercism }
BracketPush >> isPaired: aString [
	| stack |
	
	stack := Stack new.
	aString do: [ :each |
		each isOpenPunctuation ifTrue: [ stack push: each ].
		each isClosePunctuation
			ifTrue: [
				stack isEmpty ifTrue: [ ^ false ].
				(self is: each closingBracketFor: stack top)
					ifTrue: [ stack pop ]
					ifFalse: [ ^ false ] ] ].
	^ stack isEmpty
]
