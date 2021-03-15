Class {
	#name : #FASTClassDefinition,
	#superclass : #FASTDefintion,
	#instVars : [
		'#instances => FMMany type: #FASTObjectDefinition opposite: #classDefinition'
	],
	#category : #'FAST-Core-Model-Entities'
}

{ #category : #meta }
FASTClassDefinition class >> annotation [

	<FMClass: #ClassDefinition super: #FASTDefintion>
	<package: #'FAST-Core-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTClassDefinition >> addInstance: anObject [
	<generated>
	^ self instances add: anObject
]

{ #category : #accessing }
FASTClassDefinition >> instances [
	"Relation named: #instances type: #FASTObjectDefinition opposite: #classDefinition"

	<generated>
	<derived>
	^ instances
]

{ #category : #accessing }
FASTClassDefinition >> instances: anObject [

	<generated>
	instances value: anObject
]

{ #category : #navigation }
FASTClassDefinition >> instancesGroup [
	<generated>
	<navigation: 'Instances'>
	^ MooseSpecializedGroup withAll: self instances asSet
]
