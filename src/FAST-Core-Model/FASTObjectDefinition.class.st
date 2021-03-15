Class {
	#name : #FASTObjectDefinition,
	#superclass : #FASTDefintion,
	#instVars : [
		'#classDefinition => FMOne type: #FASTClassDefinition opposite: #instances'
	],
	#category : #'FAST-Core-Model-Entities'
}

{ #category : #meta }
FASTObjectDefinition class >> annotation [

	<FMClass: #ObjectDefinition super: #FASTDefintion>
	<package: #'FAST-Core-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTObjectDefinition >> classDefinition [
	"Relation named: #classDefinition type: #FASTClassDefinition opposite: #instances"

	<generated>
	<container>
	^ classDefinition
]

{ #category : #accessing }
FASTObjectDefinition >> classDefinition: anObject [

	<generated>
	classDefinition := anObject
]

{ #category : #navigation }
FASTObjectDefinition >> classDefinitionGroup [
	<generated>
	<navigation: 'ClassDefinition'>
	^ MooseSpecializedGroup with: self classDefinition
]
