Class {
	#name : #TestVoorheesExporter,
	#superclass : #TestCase,
	#instVars : [
		's1',
		's2',
		'socios',
		'vh'
	],
	#category : #TestBiblioteca
}

{ #category : #running }
TestVoorheesExporter >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
vh:= VoorheesExporter new.
s1:=Socio nombre: 'tobias' email:'hola123@gmail.com' legajo:'16286/9'.
s2:=Socio nombre: 'lucio' email:'chau123@gmail.com' legajo:'00023/1'.
socios:=OrderedCollection new.
socios add:s1.
socios add:s2.

]

{ #category : #tests }
TestVoorheesExporter >> testExport [
	| text |
	text := '[' , Character cr asString , (vh exportSocio: s1) , ','
		, Character cr asString , (vh exportSocio: s2)
		, Character cr asString , ']'.
	self assert: (vh export: socios) equals: text.
]

{ #category : #tests }
TestVoorheesExporter >> testExportSocio [
self assert:(vh exportSocio:s1)equals:
'	{
		"nombre" : "tobias",
		"email" : "hola123@gmail.com",
		"legajo" : "16286/9"
	}'
]
