Class {
	#name : #FASTScope,
	#superclass : #FASTEntity,
	#instVars : [
		'#scopeOwner => FMOne type: #FASTTScopable opposite: #scope',
		'#superScope => FMOne type: #FASTScope opposite: #subScopes',
		'#subScopes => FMMany type: #FASTScope opposite: #superScope',
		'#definitions => FMMany type: #FASTDefintion opposite: #scopeContainer'
	],
	#category : #'FAST-Core-Model-Entities'
}

{ #category : #meta }
FASTScope class >> annotation [

	<FMClass: #Scope super: #FASTEntity>
	<package: #'FAST-Core-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTScope >> addDefinition: anObject [
	<generated>
	^ self definitions add: anObject
]

{ #category : #adding }
FASTScope >> addSubScope: anObject [
	<generated>
	^ self subScopes add: anObject
]

{ #category : #accessing }
FASTScope >> definitions [
	"Relation named: #definitions type: #FASTDefintion opposite: #scopeContainer"

	<generated>
	<derived>
	^ definitions
]

{ #category : #accessing }
FASTScope >> definitions: anObject [

	<generated>
	definitions value: anObject
]

{ #category : #navigation }
FASTScope >> definitionsGroup [
	<generated>
	<navigation: 'Definitions'>
	^ MooseSpecializedGroup withAll: self definitions asSet
]

{ #category : #accessing }
FASTScope >> scopeOwner [
	"Relation named: #scopeOwner type: #FASTTScopable opposite: #scope"

	<generated>
	<container>
	<derived>
	^ scopeOwner
]

{ #category : #accessing }
FASTScope >> scopeOwner: anObject [

	<generated>
	scopeOwner := anObject
]

{ #category : #navigation }
FASTScope >> scopeOwnerGroup [
	<generated>
	<navigation: 'ScopeOwner'>
	^ MooseSpecializedGroup with: self scopeOwner
]

{ #category : #accessing }
FASTScope >> subScopes [
	"Relation named: #subScopes type: #FASTScope opposite: #superScope"

	<generated>
	<derived>
	^ subScopes
]

{ #category : #accessing }
FASTScope >> subScopes: anObject [

	<generated>
	subScopes value: anObject
]

{ #category : #navigation }
FASTScope >> subScopesGroup [
	<generated>
	<navigation: 'SubScopes'>
	^ MooseSpecializedGroup withAll: self subScopes asSet
]

{ #category : #accessing }
FASTScope >> superScope [
	"Relation named: #superScope type: #FASTScope opposite: #subScopes"

	<generated>
	<container>
	^ superScope
]

{ #category : #accessing }
FASTScope >> superScope: anObject [

	<generated>
	superScope := anObject
]

{ #category : #navigation }
FASTScope >> superScopeGroup [
	<generated>
	<navigation: 'SuperScope'>
	^ MooseSpecializedGroup with: self superScope
]
