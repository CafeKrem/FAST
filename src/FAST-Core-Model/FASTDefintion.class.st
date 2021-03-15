"
I am an Association Class
"
Class {
	#name : #FASTDefintion,
	#superclass : #FASTEntity,
	#instVars : [
		'#name => FMProperty',
		'#scopeContainer => FMOne type: #FASTScope opposite: #definitions'
	],
	#category : #'FAST-Core-Model-Entities'
}

{ #category : #meta }
FASTDefintion class >> annotation [

	<FMClass: #Defintion super: #FASTEntity>
	<package: #'FAST-Core-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTDefintion >> addReference: anObject [
	<generated>
	^ self references add: anObject
]

{ #category : #accessing }
FASTDefintion >> name [

	<FMProperty: #name type: #String>
	<generated>
	<FMComment: 'the variable Name'>
	^ name
]

{ #category : #accessing }
FASTDefintion >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FASTDefintion >> references [
	"Relation named: #references type: #FamixTNamedEntity opposite: #rdefinition"

	<generated>
	<derived>
	<FMProperty: #references type: #FamixTNamedEntity opposite: #rdefinition>
	^ self attributeAt: #references ifAbsentPut: [ FMMultivalueLink on: self opposite: #rdefinition: ]
]

{ #category : #accessing }
FASTDefintion >> references: anObject [

	<generated>
	self references value: anObject
]

{ #category : #navigation }
FASTDefintion >> referencesGroup [
	<generated>
	<navigation: 'References'>
	^ MooseSpecializedGroup withAll: self references asSet
]

{ #category : #accessing }
FASTDefintion >> scopeContainer [
	"Relation named: #scopeContainer type: #FASTScope opposite: #definitions"

	<generated>
	<container>
	^ scopeContainer
]

{ #category : #accessing }
FASTDefintion >> scopeContainer: anObject [

	<generated>
	scopeContainer := anObject
]

{ #category : #navigation }
FASTDefintion >> scopeContainerGroup [
	<generated>
	<navigation: 'ScopeContainer'>
	^ MooseSpecializedGroup with: self scopeContainer
]
