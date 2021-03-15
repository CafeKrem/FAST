"
I define a new scope
"
Trait {
	#name : #FASTTScopable,
	#instVars : [
		'#scope => FMOne type: #FASTScope opposite: #scopeOwner'
	],
	#category : #'FAST-Core-Model-Traits'
}

{ #category : #meta }
FASTTScopable classSide >> annotation [

	<FMClass: #TScopable super: #Object>
	<package: #'FAST-Core-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTTScopable >> scope [
	"Relation named: #scope type: #FASTScope opposite: #scopeOwner"

	<generated>
	<FMComment: 'a ScopableEntity contain a scope'>
	^ scope
]

{ #category : #accessing }
FASTTScopable >> scope: anObject [

	<generated>
	scope := anObject
]

{ #category : #navigation }
FASTTScopable >> scopeGroup [
	<generated>
	<navigation: 'Scope'>
	^ MooseSpecializedGroup with: self scope
]
