"
I define a new scope
"
Trait {
	#name : #FASTTScopable,
	#category : #'FAST-Core-Model-Traits'
}

{ #category : #meta }
FASTTScopable classSide >> annotation [

	<FMClass: #TScopable super: #Object>
	<package: #'FAST-Core-Model'>
	<generated>
	^self
]
