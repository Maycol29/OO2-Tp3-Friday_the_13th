Class {
	#name : #TestBiblioteca,
	#superclass : #TestCase,
	#instVars : [
		's1',
		's2',
		'socios'
	],
	#category : #TestBiblioteca
}

{ #category : #running }
TestBiblioteca >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
s1:=Socio nombre: 'tobias' email:'hola123@gmail.com' legajo:'16286/9'.
s2:=Socio nombre: 'lucio' email:'chau123@gmail.com' legajo:'00023/1'.
socios:=OrderedCollection new.
socios add:s1.
socios add:s2.

]

{ #category : #tests }
TestBiblioteca >> testAgregarSocio [
self assert:socios size equals:2.
self assert:(socios includes:s1).
self assert:(socios includes:s2).
]
